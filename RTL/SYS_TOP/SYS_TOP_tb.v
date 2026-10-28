`timescale 1ns/1ps

module SYS_TOP_tb;

    reg REF_CLK;
    reg UART_CLK;
    reg RST_N;
    reg RX_IN;
    wire TX_OUT;
    wire PAR_ERR;
    wire STP_ERR;

    SYS_TOP U_SYS_TOP (
        .REF_CLK(REF_CLK),
        .UART_CLK(UART_CLK),
        .RST_N(RST_N),
        .RX_IN(RX_IN),
        .TX_OUT(TX_OUT),
        .PAR_ERR(PAR_ERR),
        .STP_ERR(STP_ERR)
    );

    initial begin
        REF_CLK = 0;
        forever #10 REF_CLK = ~REF_CLK; // 50 MHz
    end

    initial begin
        UART_CLK = 0;
        forever #135.6 UART_CLK = ~UART_CLK; // 3.6864 MHz
    end

    parameter PRESCALE = 32;
    localparam real BIT_PERIOD = (1.0 / (3.6864e6 / PRESCALE)) * 1e9;
    localparam [7:0] REG2_DATA = {PRESCALE[5:0], 1'b0, 1'b1};

    task Send_UART(input [7:0] data);
        integer i;
        reg parity;
        begin
            parity = ^data; // Even parity
            
            // Start bit
            RX_IN = 0;
            #BIT_PERIOD;
            
            // Data bits
            for (i = 0; i < 8; i = i + 1) begin
                RX_IN = data[i];
                #BIT_PERIOD;
            end
            
            // Parity bit
            RX_IN = parity;
            #BIT_PERIOD;
            
            // Stop bit
            RX_IN = 1;
            #BIT_PERIOD;
            
            # (2*BIT_PERIOD); // Idle time
        end
    endtask

    // Receiver to verify outputs
    reg [7:0] rx_data;
    reg rx_valid;
    integer j;

    initial begin
        rx_valid = 0;
        forever begin
            @(negedge TX_OUT);
            #(BIT_PERIOD/2); // sample middle of start bit
            if (TX_OUT == 0) begin
                #(BIT_PERIOD);
                for (j = 0; j < 8; j = j + 1) begin
                    rx_data[j] = TX_OUT;
                    #(BIT_PERIOD);
                end
                // Skip Parity and Stop bit
                #(2*BIT_PERIOD);
                rx_valid = 1;
                #1;
                rx_valid = 0;
            end
        end
    end

    integer tests_passed;
    integer tests_failed;

    initial begin
        tests_passed = 0;
        tests_failed = 0;
    end

    task check_result(input [7:0] expected_data, input [8*30:1] test_name);
        begin
            @(posedge rx_valid);
            if (rx_data === expected_data) begin
                $display("[PASS] %s: Expected = 0x%h, Actual = 0x%h", test_name, expected_data, rx_data);
                tests_passed = tests_passed + 1;
            end
            else begin
                $display("[FAIL] %s: Expected = 0x%h, Actual = 0x%h", test_name, expected_data, rx_data);
                tests_failed = tests_failed + 1;
            end
        end
    endtask

    initial begin
        RST_N = 0;
        RX_IN = 1;
        #1000;
        RST_N = 1;
        
        #10000;
        
        // 1. Configure REG2 (0x2) -> Prescale, ParityType=0, ParityEn=1
        Send_UART(8'hAA);
        Send_UART(8'h02);
        Send_UART(REG2_DATA);
        
        // 2. Configure REG3 (0x3) -> Div Ratio=32 => 8'd32 (0x20)
        Send_UART(8'hAA);
        Send_UART(8'h03);
        Send_UART(8'h20);
        
        // 3. RegFile Write Operation to general address 0x4
        Send_UART(8'hAA);
        Send_UART(8'h04);
        Send_UART(8'h55);
        
        // 4. RegFile Read Operation from general address 0x4
        Send_UART(8'hBB);
        Send_UART(8'h04);
        
        // Check result
        check_result(8'h55, "RegFile Read 0x4      ");
        
        // 5. ALU Operation with operand (Addition: 0x11 + 0x22)
        Send_UART(8'hCC);
        Send_UART(8'h11);
        Send_UART(8'h22);
        Send_UART(8'h00);
        
        // Check result (2 bytes)
        check_result(8'h33, "ALU ADD Low Byte      ");
        check_result(8'h00, "ALU ADD High Byte     ");
        
        // 6. ALU Operation without operand (Multiplication: 0x11 * 0x22)
        Send_UART(8'hDD);
        Send_UART(8'h02);
        
        // Check result (2 bytes)
        check_result(8'h42, "ALU MUL Low Byte      ");
        check_result(8'h02, "ALU MUL High Byte     ");

        # (5 * BIT_PERIOD);
        $display("----------------------------------------");
        $display("Simulation Finished!");
        $display("Tests Passed: %0d", tests_passed);
        $display("Tests Failed: %0d", tests_failed);
        $display("----------------------------------------");
        $finish;
    end

endmodule

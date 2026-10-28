
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "../../Synthesis/$top_module.svf"


set SSLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

######################### Reference Container ############################

## Read Reference technology libraries

read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

## Read Reference Design Files

set RTL_DIR "../../RTL"
read_verilog -container Ref [list \
    ${RTL_DIR}/ALU/ALU.v \
    ${RTL_DIR}/Clock_Divider/ClkDiv.v \
    ${RTL_DIR}/Clock_Gating/CLK_GATE.v \
    ${RTL_DIR}/DATA_SYNC/DATA_SYNC.v \
    ${RTL_DIR}/RegFile/RegFile.v \
    ${RTL_DIR}/RST_SYNC/RST_SYNC.v \
    ${RTL_DIR}/SYS_CTRL/SYS_CTRL.v \
    ${RTL_DIR}/ASYNC_FIFO/ASYNC_FIFO.v \
    ${RTL_DIR}/ASYNC_FIFO/DF_SYNC.v \
    ${RTL_DIR}/ASYNC_FIFO/FIFO_MEM_CNTRL.v \
    ${RTL_DIR}/ASYNC_FIFO/FIFO_RD.v \
    ${RTL_DIR}/ASYNC_FIFO/FIFO_WR.v \
    ${RTL_DIR}/PULSE_GEN/PULSE_GEN.v \
    ${RTL_DIR}/UART/UART_RX/RTL/UART_RX.v \
    ${RTL_DIR}/UART/UART_RX/RTL/data_sampling.v \
    ${RTL_DIR}/UART/UART_RX/RTL/deserializer.v \
    ${RTL_DIR}/UART/UART_RX/RTL/edge_bit_counter.v \
    ${RTL_DIR}/UART/UART_RX/RTL/par_chk.v \
    ${RTL_DIR}/UART/UART_RX/RTL/stp_chk.v \
    ${RTL_DIR}/UART/UART_RX/RTL/strt_chk.v \
    ${RTL_DIR}/UART/UART_RX/RTL/uart_rx_fsm.v \
    ${RTL_DIR}/UART/UART_TX/RTL/Serializer.v \
    ${RTL_DIR}/UART/UART_TX/RTL/UART_TX.v \
    ${RTL_DIR}/UART/UART_TX/RTL/mux.v \
    ${RTL_DIR}/UART/UART_TX/RTL/parity_calc.v \
    ${RTL_DIR}/UART/UART_TX/RTL/uart_tx_fsm.v \
    ${RTL_DIR}/SYS_TOP/SYS_TOP.v \
]
## set the top Reference Design 

set_reference_design $top_module
set_top $top_module

######################## Implementation Container #########################

## Read Implementation technology libraries
read_db -container Impl [list $SSLIB $TTLIB $FFLIB]
## Read Implementation Design Files
read_verilog -container Impl -netlist "../../Synthesis/netlists/$top_module.v"
## set the top Implementation Design

set_implementation_design $top_module
set_top $top_module

## matching Compare points
match

## verify
set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui

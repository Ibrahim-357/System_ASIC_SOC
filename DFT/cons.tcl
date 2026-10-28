
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. #set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs [get_designs *]

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

#1. Master Clocks
create_clock -name REF_CLK -period 20.0 [get_ports REF_CLK]
create_clock -name UART_CLK -period 271.267 [get_ports UART_CLK]
create_clock -name SCAN_CLK -period 100.0 [get_ports scan_clk]
#2. Generated clocks
create_generated_clock -name ALU_CLK -master_clock REF_CLK -source [get_ports REF_CLK] -divide_by 1 [get_pins U_CLK_GATE/GATED_CLK]
create_generated_clock -name RX_CLK -master_clock UART_CLK -source [get_ports UART_CLK] -divide_by 1 [get_pins U_UART_RX/CLK]
create_generated_clock -name TX_CLK -master_clock UART_CLK -source [get_ports UART_CLK] -divide_by 32 [get_pins U_ClkDiv/o_div_clk]
# 3. Clock Uncertainties
set_clock_uncertainty -setup 0.2 [all_clocks]
set_clock_uncertainty -hold 0.1 [all_clocks]
# 4. Clock Transitions
set_clock_transition 0.05 [get_clocks {REF_CLK UART_CLK SCAN_CLK}]
# 
set_dont_touch_network [all_clocks]
####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group {REF_CLK ALU_CLK} -group {UART_CLK RX_CLK TX_CLK} -group {SCAN_CLK}

####################################################################################
           #########################################################
             #### Section 3 : #set input/output delay on ports ####
           #########################################################
####################################################################################
set_input_delay -max [expr 0.2 * 271.267] -clock UART_CLK [get_ports UART_RX_IN]
set_output_delay -max [expr 0.2 * (271.267 * 32)] -clock TX_CLK [get_ports UART_TX_O]
set_output_delay -max [expr 0.2 * 271.267] -clock RX_CLK [get_ports parity_error]
set_output_delay -max [expr 0.2 * 271.267] -clock RX_CLK [get_ports framing_error]

set_input_delay -max 20.0 -clock SCAN_CLK [get_ports "SI*"]
set_input_delay -max 20.0 -clock SCAN_CLK [get_ports "SE"]
set_output_delay -max 20.0 -clock SCAN_CLK [get_ports "SO*"]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports UART_RX_IN]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports "SI*"]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports "SE"]
####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################
set_load 0.1 [all_outputs]
####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           ##########################
###############################
####################################################################################


####################################################################################
           #########################################################
                  #### Section 8 : premapped cells ####
           #########################################################
####################################################################################

####################################################################################
####################################################################################
           #########################################################
                  #### Section 9 : Case Analysis ####
           #########################################################
####################################################################################

set_case_analysis 1 [get_ports test_mode]

####################################################################################


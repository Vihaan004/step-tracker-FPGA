`timescale 1ns / 1ps

module top(
    input clk100Mhz, rst,
    input START, STOP,
    input [1:0] mode,
    
    // outputs for testbench
    output START_debounced,
    output STOP_debounced,
    output pulse,
    output [13:0] step_count,
    output [11:0] mile,
    output [3:0] mile_tenth,
    output step_count_bcd,
    output distance_bcd,

    // actual outputs 
    output overflow,
    output [6:0] cathode,
    output [6:0] anode,
    output DP
    
    );
    

    debouncer debounce_START(.clk100Mhz(clk100Mhz), .rst(rst), .i_sig(START), .o_sig_debounced(START_debounced));
    debouncer debounce_STOP(.clk100Mhz(clk100Mhz), .rst(rst), .i_sig(STOP), .o_sig_debounced(STOP_debounced));

    
    pulse_generator generate_pulse(.START(START_debounced), .STOP(STOP_debounced), .CLK(clk100Mhz), .RST(rst), .MODE(mode), .pulse(pulse));
    
    // for testing without debouncer
//    pulse_generator generate_pulse_test(.START(START), .STOP(STOP), .CLK(clk100Mhz), .RST(rst), .MODE(mode), .pulse(pulse));
    
    fitbit_tracker tracker(.CLK(clk100Mhz), .RST(rst), .pulse(pulse), .step_count(step_count), .mile(mile), .mile_tenth(mile_tenth), .OFLOW(overflow));
    
    // convert step_count and distance to BCD for display
    bin2bcd_fsm step_count_converter(.clk100Mhz(clk100Mhz), .rst(rst), .start(START_debounced), .bin(step_count), .bcd(step_count_bcd));
    bin2bcd_fsm distance_converter(.clk100Mhz(clk100Mhz), .rst(rst), .start(START_debounced), .bin({mile, mile_tenth}), .bcd(distance_bcd));
    
    // create rotation module
    rotation rotation_1(.CLK(clk100Mhz), .RST(rst), .step_count_bcd(step_count_bcd), .distance_bcd(distance_bcd), .mode(mode), .display_value(display_value), .display_type(display_type));

    // 4-digit 7-segment display driver
    display_driver display_driver_1(.CLK(clk100Mhz), .RST(rst), .display_value(display_value), .display_type(display_type), .cathode(cathode), .anode(anode));
    
    
endmodule

`timescale 1ns / 1ps

module top(
    input clk100Mhz, rst,
    input START, STOP,
    input [1:0] mode,
    
    //temp
    output overflow,
    output pulse,
    output [13:0] step_count,
    output [3:0] mile,
    output half_mile,
    output START_debounced,
    output STOP_debounced
    );
    

    debouncer debounce_START(.clk100Mhz(clk100Mhz), .rst(rst), .i_sig(START), .o_sig_debounced(START_debounced));
    debouncer debounce_STOP(.clk100Mhz(clk100Mhz), .rst(rst), .i_sig(STOP), .o_sig_debounced(STOP_debounced));

    
    pulse_generator generate_pulse(.START(START_debounced), .STOP(STOP_debounced), .CLK(clk100Mhz), .RST(rst), .MODE(mode), .pulse(pulse));
    
    // for testing without debouncer
//    pulse_generator generate_pulse_test(.START(START), .STOP(STOP), .CLK(clk100Mhz), .RST(rst), .MODE(mode), .pulse(pulse));
    
    fitbit_tracker tracker(.pulse(pulse), .CLK(clk100Mhz), .RST(rst), .step_count(step_count), .mile(mile), .half_mile(half_mile), .OFLOW(overflow));
    
    
endmodule

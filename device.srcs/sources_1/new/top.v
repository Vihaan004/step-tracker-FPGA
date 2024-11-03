`timescale 1ns / 1ps

module top(
    input clk100Mhz, rst,
    input START, STOP,
    input [1:0] mode,
    
    // outputs for testbench
    output START_debounced,
    output STOP_debounced,
    output pulse,
    output [15:0] step_count,
    output [11:0] mile,
    output [3:0] mile_tenth,
    output [15:0] step_count_bcd,
    output [15:0] distance_bcd,
    output [15:0] display_value,
    output [1:0] display_type,

    // actual outputs 
    output overflow,
    output [6:0] cathode,
    output [3:0] anode,
    output DP,
    
    output reg pulse_delayed,
    output wire start_step_conversion, start_distance_conversion
    );
    

    debouncer debounce_START(.clk100Mhz(clk100Mhz), .rst(rst), .i_sig(START), .o_sig_debounced(START_debounced));
    debouncer debounce_STOP(.clk100Mhz(clk100Mhz), .rst(rst), .i_sig(STOP), .o_sig_debounced(STOP_debounced));

    
    // pulse_generator generate_pulse(.START(START_debounced), .STOP(STOP_debounced), .CLK(clk100Mhz), .RST(rst), .MODE(mode), .pulse(pulse));
    
    // for testing without debouncer
    pulse_generator generate_pulse_test(.START(START), .STOP(STOP), .CLK(clk100Mhz), .RST(rst), .MODE(mode), .pulse(pulse));
    
    fitbit_tracker tracker(.CLK(clk100Mhz), .RST(rst), .pulse(pulse), .step_count(step_count), .mile(mile), .mile_tenth(mile_tenth), .OFLOW(overflow));
    
    
    always @(posedge clk100Mhz) begin
        if (rst) begin
            pulse_delayed <= 0;
        end else begin
            pulse_delayed <= pulse;
        end
    end

    assign start_step_conversion = pulse & ~pulse_delayed;
    assign start_distance_conversion = pulse & ~pulse_delayed;
    
    // convert step_count and distance to BCD for display
    // bin2bcd_fsm step_count_converter(.clk100Mhz(clk100Mhz), .rst(rst), .start(START_debounced), .bin(step_count), .bcd(step_count_bcd));
    // bin2bcd_fsm distance_converter(.clk100Mhz(clk100Mhz), .rst(rst), .start(START_debounced), .bin({mile, mile_tenth}), .bcd(distance_bcd));
    
    bin2bcd_fsm step_count_converter(.clk100Mhz(clk100Mhz), .rst(rst), .start(start_step_conversion), .bin(step_count), .bcd(step_count_bcd));
    bin2bcd_fsm distance_converter(.clk100Mhz(clk100Mhz), .rst(rst), .start(start_distance_conversion), .bin({mile, mile_tenth}), .bcd(distance_bcd));
    
    // create rotation module
    rotation rotation_1(.CLK(clk100Mhz), .RST(rst), .step_count_bcd(step_count_bcd), .distance_bcd(distance_bcd), .mode(mode), .display_value(display_value), .display_type(display_type));

    // 4-digit 7-segment display driver
    display_driver display_driver_1(.CLK(clk100Mhz), .RST(rst), .display_value(display_value), .display_type(display_type), .cathode(cathode), .anode(anode));
    
    
endmodule

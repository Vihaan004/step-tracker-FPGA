`timescale 1ns / 1ps

module tb_top;


    reg clk100Mhz, rst;
    reg START, STOP;
    reg [1:0] mode;
    
    //temp
    wire pulse;
    wire [13:0] step_count;
    wire [13:0] mile;
    wire [15:0] step_count_bcd;
    wire [15:0] distance_bcd;
    // wire START_debounced;
    // wire STOP_debounced;

    wire [15:0] display_value;
    wire [1:0] display_type;

    wire overflow;
    wire [6:0] cathode;
    wire [3:0] anode;
    wire DP;

    // wire pulse_delayed;
    // wire start_step_conversion, start_distance_conversion;

    top DUT (
        .clk100Mhz(clk100Mhz),
        .rst(rst),
        .START(START),
        .STOP(STOP),
        .mode(mode),
        .overflow(overflow),
        .cathode(cathode),
        .anode(anode),
        .DP(DP),

        .pulse(pulse),
        .step_count(step_count),
        .mile(mile),
        .step_count_bcd(step_count_bcd),
        .distance_bcd(distance_bcd),
        .display_value(display_value),
        .display_type(display_type)
        
        // .pulse_delayed(pulse_delayed),
        // .start_step_conversion(start_step_conversion),
        // .start_distance_conversion(start_distance_conversion)
        // .START_debounced(START_debounced),
        // .STOP_debounced(STOP_debounced)

    );


    initial begin
        clk100Mhz = 0;
        forever #5 clk100Mhz = ~clk100Mhz;
    end

    initial begin
    
        // Initialize inputs
        rst = 0;
        START = 0;
        STOP = 0;
        mode = 2'b00;

        // Apply rst
        rst = 1;
        #20;
        rst = 0;

        // Test Run mode 
        mode = 2'b10;
        START = 1;
        #10 START = 0;    // START pulse

//        #150000 STOP = 1; // STOP after some time
//        #10 STOP = 0;
        
        // End simulation
        $stop;

    end

endmodule

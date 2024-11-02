`timescale 1ns / 1ps

module tb_top;
    reg clk100Mhz, rst;
    reg START, STOP;
    reg [1:0] mode;
    wire overflow;
    
    //temp
    wire pulse;
    wire [13:0] step_count;
    wire [3:0] mile;
    wire half_mile;
    wire START_debounced;
    wire STOP_debounced;


    top DUT (
        .clk100Mhz(clk100Mhz),
        .rst(rst),
        .START(START),
        .STOP(STOP),
        .mode(mode),
        .overflow(overflow),
        .pulse(pulse),
        .step_count(step_count),
        .mile(mile),
        .half_mile(half_mile),
        .START_debounced(START_debounced),
        .STOP_debounced(STOP_debounced)
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

        // // Test Walk mode (32 pulses/sec)
        // mode = 2'b00;
        // START = 1;
        // #10 START = 0;    // START pulse
        // #200 STOP = 1; // STOP after some time
        // #10 STOP = 0;
        
        // #30;

        // // Test Jog mode (64 pulses/sec)
        // mode = 2'b01;
        // START = 1;
        // #10 START = 0;    // START pulse
        // #200 STOP = 1; // STOP after some time
        // #10 STOP = 0;

        // Test Run mode (128 pulses/sec)
        mode = 2'b10;
        START = 1;
        #100 START = 0;    // START pulse
        #50000  
        STOP = 1; // STOP after some time
        #100 STOP = 0;

        // Test Off mode (no pulses)
        mode = 2'b11;
        START = 1;
        #100 START = 0;    // START pulse
        #500 STOP = 1; // STOP after some time
        #100 STOP = 0;
        // End simulation
        $stop;

    end

endmodule

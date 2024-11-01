`timescale 1ns / 1ps

module tb_pulse_generator;
    reg START, STOP;
    reg CLK, RST;
    reg [1:0] MODE;
    wire [31:0] counter;
    wire on;
    wire pulse;

    pulse_generator DUT (
        .START(START),
        .STOP(STOP),
        .CLK(CLK),
        .RST(RST),
        .MODE(MODE),
        .counter(counter),
        .on(on),
        .pulse(pulse)
    );

    // Clock generation (100 MHz)
    always #5 CLK = ~CLK;  // 10 ns period

    initial begin
        // Initialize inputs
        CLK = 0;
        RST = 0;
        START = 0;
        STOP = 0;
        MODE = 2'b00;

        // Apply RST
        RST = 1;
        #20;
        RST = 0;

        // Test Walk MODE (32 pulses/sec)
        MODE = 2'b00;
        START = 1;
        #10 START = 0;    // START pulse
        #200 STOP = 1; // STOP after some time
        #10 STOP = 0;
        
        #30;

        // Test Jog MODE (64 pulses/sec)
        MODE = 2'b01;
        START = 1;
        #10 START = 0;    // START pulse
        #200 STOP = 1; // STOP after some time
        #10 STOP = 0;

        // Test Run MODE (128 pulses/sec)
        MODE = 2'b10;
        START = 1;
        #10 START = 0;    // START pulse
        #200 STOP = 1; // STOP after some time
        #10 STOP = 0;

        // Test Off MODE (no pulses)
        MODE = 2'b11;
        START = 1;
        #10 START = 0;    // START pulse
        #500 STOP = 1; // STOP after some time
        #10 STOP = 0;
        // End simulation
        $stop;
    end

endmodule

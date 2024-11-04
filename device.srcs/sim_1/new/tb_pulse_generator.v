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

    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    initial begin
        // Initialize inputs
        RST = 0;
        START = 0;
        STOP = 0;
        MODE = 2'b00;

        
        RST = 1;
        #20;
        RST = 0;

        MODE = 2'b00;
        START = 1;
        #10 START = 0;
        #200 STOP = 1;
        #10 STOP = 0;
        
        #30;

        MODE = 2'b01;
        START = 1;
        #10 START = 0;
        #200 STOP = 1;
        #10 STOP = 0;

        MODE = 2'b10;
        START = 1;
        #10 START = 0;
        #200 STOP = 1;
        #10 STOP = 0;

        MODE = 2'b11;
        START = 1;
        #10 START = 0;
        #500 STOP = 1;
        #10 STOP = 0;
        $stop;
    end

endmodule

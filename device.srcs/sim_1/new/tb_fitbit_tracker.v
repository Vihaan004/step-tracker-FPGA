`timescale 1ns / 1ps

module tb_fitbit_tracker;
    reg pulse;
    reg CLK, RST;
    wire [13:0] step_count;
    wire [3:0] distance;
    wire half_mile;
    wire OFLOW;

    fitbit_tracker DUT (
        .pulse(pulse),
        .CLK(CLK),
        .RST(RST),
        .step_count(step_count),
        .distance(distance),
        .half_mile(half_mile),
        .OFLOW(OFLOW)
    );


    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end





endmodule

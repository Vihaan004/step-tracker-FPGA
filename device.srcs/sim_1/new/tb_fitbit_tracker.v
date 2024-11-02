`timescale 1ns / 1ps

module tb_fitbit_tracker;
    reg pulse;
    reg CLK, RST;
    wire [13:0] step_count;
    wire [11:0] mile;
    wire [3:0] mile_tenth;
    wire OFLOW;

    fitbit_tracker DUT (
        .pulse(pulse),
        .CLK(CLK),
        .RST(RST),
        .step_count(step_count),
        .mile(mile),
        .mile_tenth(mile_tenth),
        .OFLOW(OFLOW)
    );


    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end


    initial begin

        // Initialize inputs
        RST = 0;
        pulse = 0;

    end

    initial begin
        
        // Apply RST
        RST = 1;
        #20;
        RST = 0;

        repeat(200) begin
            pulse = 1;
            #10;
            pulse = 0;
            #10;
        end

        // End simulation
        $stop;
    end





endmodule

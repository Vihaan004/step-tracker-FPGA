`timescale 1ns / 1ps

module tb_display_driver;

    // Inputs
    reg CLK;
    reg RST;
    reg [15:0] display_value;
    reg [1:0] display_type;

    // Outputs
    wire [6:0] segments;
    wire [3:0] anodes;
    wire decimal_point;

    // Instantiate the display driver
    display_driver uut (
        .CLK(CLK),
        .RST(RST),
        .display_value(display_value),
        .display_type(display_type),
        .segments(segments),
        .anodes(anodes),
        .decimal_point(decimal_point)
    );

    // Clock generation (100 MHz)
    always #5 CLK = ~CLK;

    initial begin
        // Initialize inputs
        CLK = 0;
        RST = 1;
        display_value = 16'h1234;
        display_type = 2'b00;

        // Release reset
        #10 RST = 0;

        // Test display_type = 2'b00 (Step Count - Show all four digits)
        display_value = 16'h1234; // Example BCD value for step count
        display_type = 2'b00;
        #100000;  // Wait some time to observe behavior

        // Test display_type = 2'b01 (Distance - Show last two digits with decimal point)
        display_value = 16'h0456; // Example BCD value for distance (4.5 miles)
        display_type = 2'b01;
        #100000;  // Wait some time to observe behavior

        // Test display_type = 2'b10 (Mode - Show last two digits without decimal point)
        display_value = 16'h0002; // Example BCD value for mode (Mode 2)
        display_type = 2'b10;
        #100000;  // Wait some time to observe behavior

        // Test Reset
        RST = 1;
        #10 RST = 0;
        #100000;

        // End simulation
        $stop;
    end

endmodule

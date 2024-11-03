`timescale 1ns / 1ps

module tb_display_driver;

    // Inputs
    reg CLK, RST;
    reg [15:0] display_value;
    reg [1:0] display_type;

    // Outputs
    wire [6:0] cathode;
    wire [3:0] anode;
    wire DP;
    wire [1:0] current_digit;
    wire [3:0] digit1;
    wire [3:0] digit2;
    wire [3:0] digit3;
    wire [3:0] digit4;

    wire slowCLK;

    // Instantiate the display driver
    display_driver DUT (
        .CLK(CLK),
        .RST(RST),
        .display_value(display_value),
        .display_type(display_type),
        .cathode(cathode),
        .anode(anode),
        .DP(DP),
        .current_digit(current_digit),
        .digit1(digit1),
        .digit2(digit2),
        .digit3(digit3),
        .digit4(digit4),
        .slowCLK(slowCLK)
        
    );

    // Clock generation (100 MHz)
    always #5 CLK = ~CLK;

    initial begin
        // Initialize inputs
        CLK = 0;
        RST = 1;
        display_value = 16'd0000;
        display_type = 2'b00;

        // Release reset
        #101005 RST = 0;

        display_value = 16'b0001_0010_0011_0100; 
        display_type = 2'b00;
        #1000000;

        display_value = 16'b0000_0001_0010_0011; 
        display_type = 2'b01;
        #1000000;

        display_value = 16'b0000_0000_0001_0010; 
        display_type = 2'b10;
        #1000000;

        // End simulation
        $stop;
    end

endmodule

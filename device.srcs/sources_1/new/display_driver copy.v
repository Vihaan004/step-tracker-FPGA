`timescale 1ns / 1ps

module display_driver(
    input wire CLK, RST,
    input wire [15:0] display_value, // BCD value to display
    input wire [1:0] display_type,   // Display type from rotation module
    output reg [6:0] cathode,       // 7-segment segments (a-g)
    output reg DP;
    output reg [3:0] anode,         // Anodes for each digit (active low)
);

    wire slowCLK;
    reg [1:0] current_digit;         // Tracks the current digit being displayed

    // Extract individual digits from the 16-bit display_value
    reg [3:0] digit1;
    reg [3:0] digit2;
    reg [3:0] digit3;
    reg [3:0] digit4;

    // Instantiate the clock divider to create a 10 kHz clock
    complexDivider divider(
        .clk100Mhz(CLK),
        .slowClk(slowCLK),
        .clr(~RST)
    );

    always @(posedge CLK) begin
        if (RST) begin
            digit1 <= display_value[15:12];
            digit2 <= display_value[11:8];
            digit3 <= display_value[7:4];
            digit4 <= display_value[3:0];
        end
    end

    always @(posedge slowCLK) begin
        
        if (RST) begin
            current_digit <= 0;
            anode <= 4'b0000;
            decimal <= 1'b0;
        end 
        
        else begin

            if (current_digit == 2)
                current_digit <= 0;
            else
                current_digit <= current_digit + 1;

            case (current_digit)
                2'b00: begin
                    anode <= 4'b0001;
                    cathode <= segments(digit1);
                    decimal <= (display_type == 2'b01) ? 1'b0 : 1'b0; // no decimal
                end
                2'b01: begin
                    anod <= 4'b0010;
                    cathode <= segments(digit2);
                    decimal <= (display_type == 2'b01) ? 1'b0 : 1'b0; // no decimal
                end
                2'b10: begin
                    anode <= 4'b0100;
                    cathode <= segments(digit3);
                    decimal <= (display_type == 2'b01) ? 1'b0 : 1'b1; // decimal for distance mode
                end
                2'b11: begin
                    anode <= 4'b1000; 
                    cathode <= segments(digit4);
                    decimal <= (display_type == 2'b01) ? 1'b0 : 1'b0; // no decimal
                end
            endcase
        end
    end
    
    function [6:0] segments;
        input [3:0] bcd_digit;
        case (bcd_digit)
            4'd0: segments = 7'b1000000;  // "0"
            4'd1: segments = 7'b1111001;  // "1"
            4'd2: segments = 7'b0100100;  // "2"
            4'd3: segments = 7'b0110000;  // "3"
            4'd4: segments = 7'b0011001;  // "4"
            4'd5: segments = 7'b0010010;  // "5"
            4'd6: segments = 7'b0000010;  // "6"
            4'd7: segments = 7'b1111000;  // "7"
            4'd8: segments = 7'b0000000;  // "8"
            4'd9: segments = 7'b0010000;  // "9"
            default: segments = 7'b1111111; // Blank display
        endcase
    endfunction

endmodule

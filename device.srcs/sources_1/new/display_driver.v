`timescale 1ns / 1ps

module display_driver(
    input wire CLK, slowCLK, RST,
    input wire [15:0] display_value,
    input wire [1:0] display_type,
    output reg [6:0] cathode,
    output reg DP,
    output reg [3:0] anode
);

    wire slowCLK;
    reg [1:0] current_digit;

    reg [3:0] digit1;
    reg [3:0] digit2;
    reg [3:0] digit3;
    reg [3:0] digit4;

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
            anode <= 4'b1111;
            DP <= 1'b0;
        end 
        
        else begin

            if (current_digit == 2)
                current_digit <= 0;
            else
                current_digit <= current_digit + 1;

            case (current_digit)
                2'b00: begin
                    anode <= 4'b1110;
                    cathode <= segments(digit1);
                    DP <= 1'b1; // no decimal
                end
                2'b01: begin
                    anode <= 4'b1101;
                    cathode <= segments(digit2);
                    DP <= 1'b1; // no decimal
                end
                2'b10: begin
                    anode <= 4'b1011;
                    cathode <= segments(digit3);
                    DP <= (display_type == 2'b01) ? 1'b0 : 1'b1; // decimal for distance mode
                end
                2'b11: begin
                    anode <= 4'b01111; 
                    cathode <= segments(digit4);
                    DP <= 1'b1; // no decimal
                end
            endcase
        end
    end
    
    function [6:0] segments;
        input [3:0] bcd;
        case (bcd)
            4'd0: segments = 7'b0111111;  // "0"
            4'd1: segments = 7'b0000110;  // "1"
            4'd2: segments = 7'b1011011;  // "2"
            4'd3: segments = 7'b1001111;  // "3"
            4'd4: segments = 7'b1100110;  // "4"
            4'd5: segments = 7'b1101101;  // "5"
            4'd6: segments = 7'b1111101;  // "6"
            4'd7: segments = 7'b0000111;  // "7"
            4'd8: segments = 7'b1111111;  // "8"
            4'd9: segments = 7'b1101111;  // "9"
            default: segments = 7'b0000000; // Blank display
        endcase
    endfunction

endmodule

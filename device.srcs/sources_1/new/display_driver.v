`timescale 1ns / 1ps

// `define DIVIDER 50000 // 1 Khz

module display_driver(
    input wire CLK, RST,
    input wire [15:0] display_value,
    input wire [1:0] display_type,
    output reg [6:0] cathode,
    output reg DP,
    output reg [3:0] anode,

    // for testing
    output reg [1:0] current_digit,
    output reg [3:0] digit1,
    output reg [3:0] digit2,
    output reg [3:0] digit3,
    output reg [3:0] digit4,
    output reg [1:0] refresh_counter,
    output wire slowCLK
);


    complexDivider divider(
        .clk100Mhz(CLK),
        .slowClk(slowCLK),
        .clr(~RST)
    );


    always @(posedge slowCLK or posedge RST) begin
        if (RST)
            refresh_counter <= 0;
        else if (refresh_counter == 3)
            refresh_counter <= 0;
        else
            refresh_counter <= refresh_counter + 1;
    end

    always @(*) begin
        digit1 = display_value[15:12];
        digit2 = display_value[11:8];
        digit3 = display_value[7:4];
        digit4 = display_value[3:0];
    end

    always @(*) begin

        if(RST) begin
            cathode = 7'b0000000;
            anode = 4'b1111;
            DP = 1;
        end

        case (refresh_counter)
                2'b00: begin
                    anode = 4'b0111;
                    cathode = segments(digit1);
                    DP = 1; // no decimal
                end
                2'b01: begin
                    anode = 4'b1011;
                    cathode = segments(digit2);
                    DP = 1; // no decimal
                end
                2'b10: begin
                    anode = 4'b1101;
                    cathode = segments(digit3);
                    DP = (display_type == 2'b01) ? 0 : 1;
                end
                2'b11: begin
                    anode = 4'b1110; 
                    cathode = segments(digit4);
                    DP = 1; // no decimal
                end
            endcase
        
    end


    
    function [6:0] segments;
        input [3:0] bcd;
        case (bcd)
            4'd0: segments = 7'b1000000;  // "0"  (64)
            4'd1: segments = 7'b1111001;  // "1"  (121)
            4'd2: segments = 7'b0100100;  // "2"  (36)
            4'd3: segments = 7'b0110000;  // "3"  (48)
            4'd4: segments = 7'b0011001;  // "4"  (25)
            4'd5: segments = 7'b0010010;  // "5"  (18)
            4'd6: segments = 7'b0000010;  // "6"  (2)
            4'd7: segments = 7'b1111000;  // "7"  (120)
            4'd8: segments = 7'b0000000;  // "8"  (0)
            4'd9: segments = 7'b0010000;  // "9"  (16)
            default: segments = 7'b1111111; // Blank display
        endcase
    endfunction

endmodule

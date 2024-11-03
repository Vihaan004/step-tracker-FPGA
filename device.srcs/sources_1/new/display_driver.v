`timescale 1ns / 1ps

// `define DIVIDER 5000 // 1 Khz

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


    always @(posedge CLK) begin
        
        if(RST) begin
            cathode <= 7'b0000000;
            anode <= 4'b1111;
            DP <= 1'b0;
            refresh_counter <= 0;
        end
    end

    always @(posedge slowCLK) begin
        
        if(refresh_counter == 3)
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

        case (refresh_counter)
                2'b00: begin
                    anode <= 4'b0111;
                    cathode <= segments(digit1);
                    DP <= 1'b1; // no decimal
                end
                2'b01: begin
                    anode <= 4'b1011;
                    cathode <= segments(digit2);
                    DP <= 1'b1; // no decimal
                end
                2'b10: begin
                    anode <= 4'b1101;
                    cathode <= segments(digit3);
                    DP <= (display_type == 2'b01) ? 1'b0 : 1'b1;
                end
                2'b11: begin
                    anode <= 4'b1110; 
                    cathode <= segments(digit4);
                    DP <= 1'b1; // no decimal
                end
            endcase
        
    end





    // always @(posedge CLK) begin // CHANGE to SLOWCLK
        
    //     if (RST) begin
    //         current_digit <= 0;
    //         anode <= 4'b1111;
    //         DP <= 1'b0;
    //     end 
        
    //     else begin

    //         if (current_digit == 3)
    //             current_digit <= 0;
    //         else
    //             current_digit <= current_digit + 1;

    //         case (current_digit)
    //             2'b00: begin
    //                 anode <= 4'b0111;
    //                 cathode <= segments(digit1);
    //                 DP <= 1'b1; // no decimal
    //             end
    //             2'b01: begin
    //                 anode <= 4'b1011;
    //                 cathode <= segments(digit2);
    //                 DP <= 1'b1; // no decimal
    //             end
    //             2'b10: begin
    //                 anode <= 4'b1101;
    //                 cathode <= segments(digit3);
    //                 DP <= (display_type == 2'b01) ? 1'b0 : 1'b1;
    //             end
    //             2'b11: begin
    //                 anode <= 4'b1110; 
    //                 cathode <= segments(digit4);
    //                 DP <= 1'b1; // no decimal
    //             end
    //         endcase
    //     end
    // end
    
    function [6:0] segments;
        input [3:0] bcd;
        case (bcd)
            4'd0: segments = 7'b0111111;  // "0"  (63)
            4'd1: segments = 7'b0000110;  // "1"  (6)
            4'd2: segments = 7'b1011011;  // "2"  (91)
            4'd3: segments = 7'b1001111;  // "3"  (79)
            4'd4: segments = 7'b1100110;  // "4"  (102)
            4'd5: segments = 7'b1101101;  // "5"  (109)
            4'd6: segments = 7'b1111101;  // "6"  (125)
            4'd7: segments = 7'b0000111;  // "7"  (7)
            4'd8: segments = 7'b1111111;  // "8"  (127)
            4'd9: segments = 7'b1101111;  // "9"  (111)
            default: segments = 7'b0000000; // Blank display
        endcase
    endfunction

endmodule

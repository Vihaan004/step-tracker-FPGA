`timescale 1ns / 1ps

module display_driver(
    input wire CLK,          // 100 MHz clock
    input wire RST,          // Reset
    input wire [15:0] display_value, // 4-digit BCD value
    input wire [1:0] display_type,   // Display type (step count, distance, mode)
    output reg [6:0] segments,       // 7-segment display output
    output reg [3:0] anodes          // Anode control for each 7-segment digit
);

    // Parameters for multiplexing timing (refresh rate)
    localparam REFRESH_RATE = 100_000; // Adjust for optimal display refresh
    
    reg [1:0] current_digit;           // Current digit to display (0 to 3)
    reg [19:0] refresh_counter;        // Counter for refreshing displays

    wire [3:0] digit_value;            // BCD value of the current digit

    // Assign BCD digit based on current_digit
    assign digit_value = (current_digit == 2'b00) ? display_value[3:0] :
                         (current_digit == 2'b01) ? display_value[7:4] :
                         (current_digit == 2'b10) ? display_value[11:8] :
                         display_value[15:12];

    // 7-segment encoding for BCD (0-9)
    always @(*) begin
        case (digit_value)
            4'd0: segments = 7'b1000000;
            4'd1: segments = 7'b1111001;
            4'd2: segments = 7'b0100100;
            4'd3: segments = 7'b0110000;
            4'd4: segments = 7'b0011001;
            4'd5: segments = 7'b0010010;
            4'd6: segments = 7'b0000010;
            4'd7: segments = 7'b1111000;
            4'd8: segments = 7'b0000000;
            4'd9: segments = 7'b0010000;
            default: segments = 7'b1111111; // Blank display
        endcase
    end

    // Anode control for multiplexing
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            refresh_counter <= 0;
            current_digit <= 0;
            anodes <= 4'b1111; // All anodes off
        end else begin
            if (refresh_counter < REFRESH_RATE) begin
                refresh_counter <= refresh_counter + 1;
            end else begin
                refresh_counter <= 0;
                current_digit <= current_digit + 1;
                case (current_digit)
                    2'b00: anodes <= 4'b1110; // Activate first digit
                    2'b01: anodes <= 4'b1101; // Activate second digit
                    2'b10: anodes <= 4'b1011; // Activate third digit
                    2'b11: anodes <= 4'b0111; // Activate fourth digit
                endcase
            end
        end
    end
endmodule

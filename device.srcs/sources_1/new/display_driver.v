`timescale 1ns / 1ps

module display_driver(
    input wire CLK,                // 100 MHz clock
    input wire RST,                // Reset signal
    input wire [15:0] display_value, // BCD value to be displayed
    input wire [1:0] display_type,   // Display type from rotation module
    output reg [6:0] segments,     // 7-segment display segments (a-g)
    output reg [3:0] anodes,       // Anodes for each 7-segment digit (active low)
    output reg decimal_point       // Decimal point control
);

    // Parameters for multiplexing timing
    localparam REFRESH_RATE = 100_000; // Adjust this as needed for optimal display refresh rate

    reg [1:0] current_digit;      // Current digit to display (0 to 3)
    reg [19:0] refresh_counter;   // Counter for refreshing displays

    wire [3:0] digit_value;       // BCD value of the current digit

    // Extract the appropriate BCD digit based on current_digit
    assign digit_value = (current_digit == 2'b00) ? display_value[3:0] :
                         (current_digit == 2'b01) ? display_value[7:4] :
                         (current_digit == 2'b10) ? display_value[11:8] :
                         display_value[15:12];

    // 7-segment encoding for each BCD digit (0-9)
    always @(*) begin
        case (digit_value)
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
    end

    // Anode and decimal point control based on display type and current_digit
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            refresh_counter <= 0;
            current_digit <= 0;
            anodes <= 4'b1111;       // All anodes off initially
            decimal_point <= 1'b1;    // Decimal point off
        end else begin
            if (refresh_counter < REFRESH_RATE) begin
                refresh_counter <= refresh_counter + 1;
            end else begin
                refresh_counter <= 0;
                current_digit <= current_digit + 1;

                // Default values for anodes and decimal point
                anodes <= 4'b1111;
                decimal_point <= 1'b1;

                case (display_type)
                    2'b00: begin
                        // Step Count - Display all four digits
                        case (current_digit)
                            2'b00: anodes <= 4'b1110; // Activate first digit
                            2'b01: anodes <= 4'b1101; // Activate second digit
                            2'b10: anodes <= 4'b1011; // Activate third digit
                            2'b11: anodes <= 4'b0111; // Activate fourth digit
                        endcase
                    end
                    2'b01: begin
                        // Distance - Display only last two digits with decimal point between them
                        case (current_digit)
                            2'b00: begin
                                anodes <= 4'b1011;     // Activate third digit
                                decimal_point <= 1'b0; // Decimal point ON for distance
                            end
                            2'b01: anodes <= 4'b0111; // Activate fourth digit
                        endcase
                    end
                    2'b10: begin
                        // Mode - Display only last two digits, no decimal point
                        case (current_digit)
                            2'b00: anodes <= 4'b1011; // Activate third digit
                            2'b01: anodes <= 4'b0111; // Activate fourth digit
                        endcase
                    end
                endcase
            end
        end
    end
endmodule

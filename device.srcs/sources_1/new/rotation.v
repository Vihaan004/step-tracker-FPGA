`timescale 1ns / 1ps

`define timer 5 // 200000000


module rotation(
    input wire CLK, RST,
    input wire [15:0] step_count_bcd,
    input wire [15:0] distance_bcd,
    input wire [1:0] mode,
    output reg [15:0] display_value,
    output reg [1:0] display_type
);

    // Parameters for 2-second interval (200 million cycles at 100 MHz)
    // localparam TWO_SEC_COUNT = 200_000_000;

    // Internal counter for timing and state for cycling
    reg [27:0] counter;
    reg [1:0] display_state; // State to cycle between step count, distance, and mode

    always @(posedge CLK) begin

        if (RST) begin
            counter <= 0;
            display_state <= 2'b00;
            display_value <= 0;
            display_type <= 2'b00;
        end 
        
        else begin

            case (display_state)
                    2'b00: begin
                        display_value <= step_count_bcd;
                        display_type <= 2'b00;
                    end
                    2'b01: begin
                        display_value <= distance_bcd;
                        display_type <= 2'b01;
                    end
                    2'b10: begin
                        display_value <= {14'b0, mode};
                        display_type <= 2'b10;
                    end
                    default: begin
                        display_value <= step_count_bcd;
                        display_type <= 2'b00;
                    end
            endcase

            if (counter >= `timer) begin
                counter <= 0;
                display_state <= display_state + 1;
                
                if(display_state == 2'b10) 
                    display_state <= 2'b00;
            end

            else counter <= counter + 1;


        end
    end
endmodule
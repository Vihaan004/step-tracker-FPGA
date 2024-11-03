`timescale 1ns / 1ps

`define WALK_COUNT 150  // 3125000
`define JOG_COUNT  100  // 1562500
`define RUN_COUNT  50   // 781250


module pulse_generator(
    input wire START, STOP,
    input wire CLK, RST,
    input wire [1:0] MODE,
    output reg [31:0] counter,
    output reg on,
    output reg pulse
    );

    always @(*) begin
        if(START)
            on = 1;
        else if(STOP)
            on = 0;
    end

    always @(posedge CLK) begin
        
        pulse <=0;
        
        if(RST) begin
            counter <= 0;
            on <= 0;
        end

        else if(on) begin

            case(MODE)
                2'b00:  if(counter < `WALK_COUNT) begin
                            counter <= counter + 1;
                        end else begin 
                            counter <= 1;
                            pulse <= ~pulse;
                        end
                2'b01:  if(counter < `JOG_COUNT) begin
                            counter <= counter + 1;
                        end else begin 
                            counter <= 1;
                            pulse <= ~pulse;
                        end
                2'b10:  if(counter < `RUN_COUNT) begin
                            counter <= counter + 1;
                        end else begin 
                            counter <= 1;
                            pulse <= ~pulse;
                        end
                2'b11: pulse <= 0;
                    default: pulse <= 0;
            endcase

        end

        else begin
            counter <= 0;
            pulse <= 0;
        end

    end

endmodule

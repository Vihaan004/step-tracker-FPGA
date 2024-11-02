`timescale 1ns / 1ps

module fitbit_tracker(
    input pulse,
    input CLK, RST,
    output reg [13:0] step_count,
    output reg [3:0] distance,
    output reg half_mile,
    output reg OFLOW
    );

    always @(posedge CLK) begin
        
        if (RST) begin
            step_count <= 0;
            distance <= 0;
            OFLOW <= 0;
        end

        else if (pulse) begin
            step_count <= step_count + 1;

            if (step_count >= 9999) begin
                OFLOW <= 1;
            end
            if (step_count % 2048 == 0 && step_count != 0) begin
                if (distance < 10) begin
                    if(half_mile == 0) begin
                        half_mile <= 1;
                    end
                    else begin
                        half_mile <= 0;
                        distance <= distance + 1;
                    end
                end
            end

        end
    end

endmodule

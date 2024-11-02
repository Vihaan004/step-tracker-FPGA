`timescale 1ns / 1ps

module fitbit_tracker(
    input pulse,
    input CLK, RST,
    output reg [13:0] step_count,
    output reg [3:0] mile,
    output reg half_mile,
    output reg OFLOW
    );

    initial begin
        step_count = 0;
        mile = 0;
        half_mile = 0;
        OFLOW = 0;
    end

    always @(posedge CLK) begin
        
        if (RST) begin
            step_count <= 0;
            mile <= 0;
            OFLOW <= 0;
        end

        else if (pulse) begin
            step_count <= step_count + 1;

            if (step_count >= 9999) begin
                OFLOW <= 1;
            end
            if (step_count % 4 == 0 && step_count != 0) begin // use 2048
                if (mile < 10) begin
                    if(half_mile == 0) begin
                        half_mile <= 1;
                    end
                    else begin
                        half_mile <= 0;
                        mile <= mile + 1;
                    end
                end
            end

        end
    end

endmodule

`timescale 1ns / 1ps

module fitbit_tracker(
    input CLK, RST,
    input pulse,
    output reg [13:0] step_count,
    output reg [11:0] mile,
    output reg [3:0] mile_tenth,
    output reg OFLOW
    );

    initial begin
        step_count = 0;
        mile = 0;
        mile_tenth = 0;
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

                mile_tenth <= mile_tenth + 5;
                if(mile_tenth == 5) begin
                    mile <= mile + 1;
                    mile_tenth <= 0;
                end

            end

        end
    end

endmodule

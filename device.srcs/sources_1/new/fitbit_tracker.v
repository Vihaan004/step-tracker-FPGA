`timescale 1ns / 1ps

module fitbit_tracker(
    input CLK, RST,
    input pulse,
    output reg [13:0] step_count,
    output reg [15:0] total_steps, // max 40960
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
            total_steps <= 0;
            mile <= 0;
            OFLOW <= 0;
        end

        else if (pulse) begin

            if(total_steps < 15'd40960) begin
                total_steps <= total_steps + 1;
            end
            

            if (total_steps > 9999) begin
                OFLOW <= 1;
            end else begin
                step_count <= step_count + 1;
            end

            if (total_steps % 10 == 0 && total_steps != 0) begin // CHANGE to 2048

                mile_tenth <= mile_tenth + 5;
                if(mile_tenth == 5) begin
                    mile <= mile + 1;
                    mile_tenth <= 0;
                end

            end

        end
    end

endmodule

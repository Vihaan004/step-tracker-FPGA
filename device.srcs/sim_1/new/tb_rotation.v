`timescale 1ns / 1ps

module tb_rotation;

reg CLK, RST;
reg [15:0] step_count_bcd;
reg [15:0] distance_bcd;
reg [1:0] mode;
wire [15:0] display_value;
wire [1:0] display_type;

rotation DUT (
    .CLK(CLK),
    .RST(RST),
    .step_count_bcd(step_count_bcd),
    .distance_bcd(distance_bcd),
    .mode(mode),
    .display_value(display_value),
    .display_type(display_type)
);

initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

initial begin
    // Initialize inputs
    RST = 0;
    step_count_bcd = 0;
    distance_bcd = 0;
    mode = 0;

    RST = 1;
    #20;
    RST = 0;

    step_count_bcd = 16'b0000_0011_0010_0000; // 0320
    distance_bcd = 16'b0000_0000_0001_0000; // 1.0
    mode = 01;

    #1000;

end
    
    
endmodule

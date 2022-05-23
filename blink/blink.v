module blink (
clk,
leds,
);



input clk;

output reg [3:0] leds;

reg [31:0] counter;

initial begin
    counter <= 32'b0;

	 leds <= 4'b0;

end

always @(posedge clk) begin

    counter <= counter + 1'b1;

    if (counter > 50000000) begin
        leds = leds + 1'b1;
        counter <= 32'b0;
    end

end

endmodule

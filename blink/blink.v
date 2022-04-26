module blink (
clk,
out
);

output reg out;

input clk;

reg [31:0] counter;

initial begin
    counter <= 32'b0;
    out <= 1'b0;

end

always @(posedge clk) begin

    counter <= counter + 1'b1;

    if (counter > 50000000) begin
        out <= !out;
        counter <= 32'b0;
    end

end

endmodule

module ClockDivider #(
    parameter N = 20
) (
    input clk,
    input rst_n,
    output reg dclk
);
    reg [N-1:0] dff;
    always @(posedge clk) begin
        if (!rst_n) begin
            dff <= {N{1'b0}};
        end else begin
            dff <= dff + 1'b1;
            dclk <= &dff;
        end
    end
endmodule
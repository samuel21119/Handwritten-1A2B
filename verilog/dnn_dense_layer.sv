`timescale 1ns/1ps
module dense_layer #(
    parameter inputBits = 16,
    parameter outputBits = 16,
    parameter tmpBits = 32,
    parameter N = 64,
    parameter M = 32,
    parameter ADDR_WIDTH = 12,
    parameter RELU_ON = 1
) (
    input clk,
    input signed [inputBits-1:0] in[N-1:0],
    input rst_n,
    input start,
    input [7:0] mem_dout,
    output reg [ADDR_WIDTH-1:0] mem_addr,
    output signed [outputBits-1 : 0] out[M-1:0],
    output finish
);
    parameter WAIT = 2'd0;
    parameter CALC = 2'd1;
    parameter FINISH = 2'd2;

    parameter [ADDR_WIDTH-1:0] TOTAL_CLK = N*M+M+1;
    parameter [ADDR_WIDTH-1:0] RAM_SIZE_CHECK = N*M+M-1;
    parameter [ADDR_WIDTH-1:0] MATRIX_SIZE = N*M;
    parameter [ADDR_WIDTH-1:0] ADDR0 = 0;
    parameter [ADDR_WIDTH-1:0] ADDR1 = 1;
    parameter logN = $clog2(N);
    parameter logM = $clog2(M);
    parameter MM = 1 << logM;


    // N * M dense
    // M bias
    // relu
    // Total N*M+M parameters

    reg [1:0] state, next_state;
    reg [ADDR_WIDTH-1:0] cnt, next_cnt;
    reg signed [inputBits-1:0] in_tmp[N-1:0];
    reg [logN-1:0] i;
    reg [logM-1:0] j;
    reg signed [tmpBits-1 : 0] out_tmp[MM-1:0], next_add, add;
    genvar gi;
    generate
        for (gi = 0; gi < M; gi = gi + 1)
            assign out[gi] = out_tmp[gi][outputBits-1 : 0];
    endgenerate

    assign finish = state == FINISH ? 1'b1 : 1'b0;
    wire [ADDR_WIDTH-1:0] cnt2 = cnt - ADDR1; // === cnt - 1
    reg signed [7:0] mul, input_resize;

    
    always @(posedge clk) begin
        if (rst_n == 1'b0) begin
            state <= WAIT;
            cnt <= 1'b0;
            add <= 1'b0;
            out_tmp[j] <= 1'b0;
            in_tmp <= '{default:16'b0};
        end else begin
            state <= next_state;
            cnt <= next_cnt;
            add <= next_add;
            if (state == CALC && next_state == CALC)
                out_tmp[j] <= next_add;
            else
                out_tmp[j] <= out_tmp[j];
            if (state == WAIT && start)
                in_tmp <= in;
            else
                in_tmp <= in_tmp;
        end
    end
    always @(*) begin
        case (state)
            WAIT: next_state = start ? CALC : WAIT;
            CALC: next_state = cnt == TOTAL_CLK ? FINISH : CALC;
            FINISH: next_state = WAIT;
            default: next_state = WAIT;
        endcase
    end
    always @(*) begin
        if (state == CALC) begin
            next_cnt = cnt + 1'b1;
        end else begin
            next_cnt = 1'b0;
        end
    end
    always @(*) begin
        case (state)
            WAIT: mem_addr = ADDR0;
            CALC: mem_addr = (cnt < RAM_SIZE_CHECK) ? cnt + ADDR1 : ADDR0;
            default: mem_addr = ADDR0;
        endcase
    end
    always @(*) begin
        i = cnt2[logN-1:0];
        j = (cnt2 < MATRIX_SIZE) ? cnt2[logM-1+logN:logN] : cnt2[logM-1:0];
        mul = mem_dout;
        mul[7] = ~mul[7];
        if (cnt == ADDR0) begin
            next_add = 1'b0;
        end else begin
            if (cnt2 < MATRIX_SIZE) begin
                next_add = in_tmp[i] * mul;
                if (i != 0) next_add = next_add + add;
                else next_add = next_add;
            end else begin
                next_add = (out_tmp[j] >>> 8) + mul;
                if (RELU_ON == 1)
                    next_add = next_add > 0 ? next_add : 0;
                else next_add = next_add;
            end
        end
    end
endmodule
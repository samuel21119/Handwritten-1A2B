`timescale 1ns/1ps
module dnn (
    input [1023:0] pixels,
    input clk,
    input rst_n,
    output [3:0] ans,
    output finish
);
    // Layer 1
    // 1024 * 64
    // Memory block width = 128bit
    // Memory block depth = 4100
    // Memory block clock delay: 2
    wire layer1_finish;
    wire [12:0] layer1_mem_addr;
    wire [127:0] layer1_mem_dout;
    wire signed [15:0] layer1_out[63:0];
    blk_mem_gen_layer1_128bit layer1_mem(
        .clka(clk),
        .wea(1'b0),
        .addra(layer1_mem_addr),
        .dina(128'b0),
        .douta(layer1_mem_dout)
    );
    dense_layer_input #(
        .outputBits(16),
        .tmpBits(32),
        .N(1024),
        .M(4),
        .ADDR_WIDTH(13)
    ) layer1_m0(
        .clk(clk),
        .in(pixels),
        .rst_n(rst_n),
        .start(1'b1),
        .mem_dout(layer1_mem_dout[7:0]),
        .mem_addr(layer1_mem_addr),
        .finish(layer1_finish),
        .out(layer1_out[3:0])
    );
    genvar l1;
    generate
        for (l1 = 1; l1 <= 15; l1 = l1 + 1) begin
            dense_layer_input #(
                .outputBits(16),
                .tmpBits(32),
                .N(1024),
                .M(4),
                .ADDR_WIDTH(13)
            ) layer1_gen(
                .clk(clk),
                .in(pixels),
                .rst_n(rst_n),
                .start(1'b1),
                .mem_dout(layer1_mem_dout[(l1+1)*8-1:l1*8]),
                .mem_addr(),
                .finish(),
                .out(layer1_out[(l1+1)*4-1:l1*4])
            );
        end
    endgenerate
    
    // Layer 2
    // 64 * 32
    // Memory block width = 8bit
    // Memory block depth = 2080
    // Memory block clock delay: 2
    wire layer2_finish;
    wire [11:0] layer2_mem_addr;
    wire [7:0] layer2_mem_dout;
    wire signed [15:0] layer2_out[31:0];
    blk_mem_gen_layer2 layer2_mem(
        .clka(clk),
        .wea(1'b0),
        .addra(layer2_mem_addr),
        .dina(8'b0),
        .douta(layer2_mem_dout)
    );
    dense_layer #(
        .inputBits(16),
        .outputBits(16),
        .tmpBits(32),
        .N(64),
        .M(32),
        .ADDR_WIDTH(12)
    ) layer2_m(
        .clk(clk),
        .in(layer1_out),
        .rst_n(rst_n),
        .start(layer1_finish),
        .mem_dout(layer2_mem_dout),
        .mem_addr(layer2_mem_addr),
        .finish(layer2_finish),
        .out(layer2_out)
    );

    // Layer 3
    // 32 * 10
    // Memory block width = 8bit
    // Memory block depth = 330
    // Memory block clock delay: 2
    wire layer3_finish;
    wire [8:0] layer3_mem_addr;
    wire [7:0] layer3_mem_dout;
    wire signed [15:0] layer3_out[9:0];
    blk_mem_gen_layer3 layer3_mem(
        .clka(clk),
        .wea(1'b0),
        .addra(layer3_mem_addr),
        .dina(8'b0),
        .douta(layer3_mem_dout)
    );
    dense_layer #(
        .inputBits(16),
        .outputBits(16),
        .tmpBits(32),
        .N(32),
        .M(10),
        .ADDR_WIDTH(9),
        .RELU_ON(0)
    ) layer3_m(
        .clk(clk),
        .in(layer2_out),
        .rst_n(rst_n),
        .start(layer2_finish),
        .mem_dout(layer3_mem_dout),
        .mem_addr(layer3_mem_addr),
        .finish(layer3_finish),
        .out(layer3_out)
    );
    assign finish = layer3_finish;

    // Output layer
    // argmax: get the index which has the largest value
    wire [3:0] argmax_out;
    reg [3:0] ans_dff;
    argmax_layer #(
        .inputBits(16)
    ) argmax(
        .in(layer3_out),
        .out(argmax_out)
    );

    // Save output into DFF
    always @(posedge clk) begin
        if (rst_n == 1'b0)
            ans_dff <= 4'he;
        else
            ans_dff <= finish ? argmax_out : ans_dff;
    end
    assign ans = finish ? argmax_out : ans_dff;
endmodule
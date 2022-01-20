module argmax_layer #(
    parameter inputBits = 16
) (
    input signed [inputBits-1:0] in[9:0],
    output [3:0] out
);
    wire cmp01 = in[0] > in[1];
    wire signed [inputBits-1:0] max01 = cmp01 ? in[0] : in[1];
    wire [3:0] max01_ind = cmp01 ? 4'd0 : 4'd1;

    wire cmp23 = in[2] > in[3];
    wire signed [inputBits-1:0] max23 = cmp23 ? in[2] : in[3];
    wire [3:0] max23_ind = cmp23 ? 4'd2 : 4'd3;
    
    wire cmp45 = in[4] > in[5];
    wire signed [inputBits-1:0] max45 = cmp45 ? in[4] : in[5];
    wire [3:0] max45_ind = cmp45 ? 4'd4 : 4'd5;

    wire cmp67 = in[6] > in[7];
    wire signed [inputBits-1:0] max67 = cmp67 ? in[6] : in[7];
    wire [3:0] max67_ind = cmp67 ? 4'd6 : 4'd7;

    wire cmp89 = in[8] > in[9];
    wire signed [inputBits-1:0] max89 = cmp89 ? in[8] : in[9];
    wire [3:0] max89_ind = cmp89 ? 4'd8 : 4'd9;

    wire cmp03 = max01 > max23;
    wire signed [inputBits-1:0] max03 = cmp03 ? max01 : max23;
    wire [3:0] max03_ind = cmp03 ? max01_ind : max23_ind;
    
    wire cmp47 = max45 > max67;
    wire signed [inputBits-1:0] max47 = cmp47 ? max45 : max67;
    wire [3:0] max47_ind = cmp47 ? max45_ind : max67_ind;

    wire cmp07 = max03 > max47;
    wire signed [inputBits-1:0] max07 = cmp07 ? max03 : max47;
    wire [3:0] max07_ind = cmp07 ? max03_ind : max47_ind;

    wire cmp09 = max07 > max89;
    assign out = cmp09 ? max07_ind : max89_ind;
endmodule

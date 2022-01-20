module Game (
    input clk,
    input rst_n,
    input [3:0] digitClicked,
    input enterButtonClicked,
    input [3:0] inputNum,
    input canvasEmpty,
    output reg [3:0] digitSelected,
    output reg [15:0] signal,
    output reg [15:0] answer,
    output isresult,
    output istitle
);
    parameter INIT = 2'd0;
    parameter GUESS = 2'd1;
    parameter SHOW = 2'd2;

    reg [1:0] state, next_state;
    reg [15:0] guess, next_guess;

    wire [15:0] random;
    Random_4x4b random_gen0(clk, rst_n, random);

    wire [2:0] A, B;
    AB ab(answer, guess, A, B);
    assign isresult = state == SHOW;
    assign istitle = state == INIT;
    wire noEmpty = (guess[3:0] != 4'he && guess[7:4] != 4'he && guess[11:8] != 4'he && guess[15:12] != 4'he);

    wire [3:0] num = canvasEmpty ? 4'he : inputNum;

    always @(*) begin
        if (state == GUESS) signal = guess;
        else begin
            signal[2:0] = A;
            signal[3] = 1'b0;
            signal[7:4] = 4'ha;
            signal[10:8] = B;
            signal[11] = 1'b0;
            signal[15:12] = 4'hb;
        end
    end
    always @(posedge clk) begin
        if (rst_n == 1'b0) begin
            state <= INIT;
            answer <= {4'd9, 4'd4, 4'd8, 4'd7};
            guess <= 16'b0;
        end else begin
            state <= next_state;
            answer <= (next_state == GUESS & state == INIT) ? random : answer;
            guess <= next_guess;
        end
    end

    always @(*) begin
        case (state)
            INIT: next_state = enterButtonClicked ? GUESS : INIT;
            GUESS: next_state = (digitSelected == 4'd0 && enterButtonClicked && noEmpty) ? SHOW : GUESS;
            SHOW: next_state = enterButtonClicked ? (A == 3'd4 ? INIT : GUESS) : SHOW;
            default: next_state = INIT;
        endcase
    end

    always @(*) begin
        case (state)
            GUESS: begin
                if (digitSelected == 4'd0 || enterButtonClicked == 1'b0) next_guess = guess;
                else begin
                    next_guess = guess;
                    case (digitSelected)
                        4'b0001: next_guess[3:0] = num;
                        4'b0010: next_guess[7:4] = num;
                        4'b0100: next_guess[11:8] = num;
                        default: next_guess[15:12] = num;
                    endcase
                end
            end
            SHOW: next_guess = next_state == GUESS ? 16'heeee : guess;
            default: next_guess = 16'heeee;
        endcase
    end

    always @(posedge clk) begin
        if (rst_n == 1'b0) begin
            digitSelected <= 4'b0;
        end else begin
            case (digitClicked)
                4'b0001: digitSelected <= digitSelected == 4'b0001 ? 4'b0 : 4'b0001;
                4'b0010: digitSelected <= digitSelected == 4'b0010 ? 4'b0 : 4'b0010;
                4'b0100: digitSelected <= digitSelected == 4'b0100 ? 4'b0 : 4'b0100;
                4'b1000: digitSelected <= digitSelected == 4'b1000 ? 4'b0 : 4'b1000;
                default: digitSelected <= digitSelected;
            endcase
        end
    end

endmodule

module LFSR(
    input clk,
    input rst_n,
    output reg [15:0] out
);
    always @(posedge clk) begin
        if (rst_n == 1'b0) begin
            out[15:0] <= 16'b1101000000001000;
        end else begin
            out[15:1] <= out[14:0];
            out[0] <= out[15] ^ out[14] ^ out[12] ^ out[3];
        end
    end
endmodule

module Random_4x4b(
    input clk,
    input rst_n,
    output reg [15:0] out
);
    reg [15:0] gen;
    wire [15:0] rand;
    LFSR lfsr0(clk, rst_n, rand);

    always @(posedge clk) begin
        if (rst_n == 1'b0)
            out <= {4'd9, 4'd4, 4'd8, 4'd7};
        else
            out <= gen;
    end
    always @(*) begin
        gen[3:0] = rand[3:0] >= 4'd10 ? rand[3:0] - 4'd10 : rand[3:0];
        gen[7:4] = rand[7:4] >= 4'd10 ? rand[7:4] - 4'd10 : rand[7:4];
        gen[11:8] = rand[11:8] >= 4'd10 ? rand[11:8] - 4'd10 : rand[11:8];
        gen[15:12] = rand[15:12] >= 4'd10 ? rand[15:12] - 4'd10 : rand[15:12];

        gen[7:4] = (gen[7:4] == gen[3:0]) ? gen[7:4] + 1'b1 : gen[7:4];
        gen[7:4] = (gen[7:4] == 4'd10) ? 4'b0 : gen[7:4];

        gen[11:8] = (gen[11:8] == gen[3:0] | gen[11:8] == gen[7:4]) ? gen[11:8] + 1'b1 : gen[11:8];
        gen[11:8] = (gen[11:8] == 4'd10) ? 4'b0 : gen[11:8];
        gen[11:8] = (gen[11:8] == gen[3:0] | gen[11:8] == gen[7:4]) ? gen[11:8] + 1'b1 : gen[11:8];
        gen[11:8] = (gen[11:8] == 4'd10) ? 4'b0 : gen[11:8];

        gen[15:12] = (gen[15:12] == gen[11:8] | gen[15:12] == gen[7:4] | gen[15:12] == gen[3:0]) ? gen[15:12] + 1'b1 : gen[15:12];
        gen[15:12] = (gen[15:12] == 4'd10) ? 4'b0 : gen[15:12];
        gen[15:12] = (gen[15:12] == gen[11:8] | gen[15:12] == gen[7:4] | gen[15:12] == gen[3:0]) ? gen[15:12] + 1'b1 : gen[15:12];
        gen[15:12] = (gen[15:12] == 4'd10) ? 4'b0 : gen[15:12];
        gen[15:12] = (gen[15:12] == gen[11:8] | gen[15:12] == gen[7:4] | gen[15:12] == gen[3:0]) ? gen[15:12] + 1'b1 : gen[15:12];
        gen[15:12] = (gen[15:12] == 4'd10) ? 4'b0 : gen[15:12];
    end
endmodule

module count(
    input [3:0] in,
    output [2:0] out
);
    assign out[0] = in[0] ^ in[1] ^ in[2] ^ in[3];
    assign out[1] = ~(in == 4'b0000 | in == 4'b0001 | in == 4'b0010 | in == 4'b0100 | in == 4'b1000 | out[2]);
    assign out[2] = in == 4'b1111;
endmodule

module AB(
    input [15:0] answer,
    input [15:0] sw,
    output [2:0] A,
    output [2:0] B
);
    wire [3:0] a_cnt, b_cnt;
    wire [3:0] ans[3:0], guess[3:0];
    generate
        genvar i;
        for (i = 0; i < 4; i = i + 1) begin
            assign ans[i] = answer[(i*4+3):(i*4)];
            assign guess[i] = sw[(i*4+3):(i*4)];
            assign a_cnt[i] = ans[i] == guess[i];
        end
    endgenerate
    assign b_cnt[0] = (guess[0] == ans[1]) | (guess[0] == ans[2]) | (guess[0] == ans[3]);
    assign b_cnt[1] = (guess[1] == ans[0]) | (guess[1] == ans[2]) | (guess[1] == ans[3]);
    assign b_cnt[2] = (guess[2] == ans[0]) | (guess[2] == ans[1]) | (guess[2] == ans[3]);
    assign b_cnt[3] = (guess[3] == ans[0]) | (guess[3] == ans[1]) | (guess[3] == ans[2]);
    count cnt0(a_cnt, A);
    count cnt1(b_cnt, B);
endmodule
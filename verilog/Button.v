module Debounce (
    input clk,
    input sig,
    output reg debounce
);
    reg [3:0] dff;

    always @(posedge clk) begin
        dff <= {dff[2:0], sig};
        debounce <= &dff;
    end

endmodule

module OnePulse (
    output reg signal_single_pulse,
    input wire signal,
    input wire clock
    );

    reg signal_delay;

    always @(posedge clock) begin
        if (signal == 1'b1 & signal_delay == 1'b0)
          signal_single_pulse <= 1'b1;
        else
          signal_single_pulse <= 1'b0;

        signal_delay <= signal;
    end
endmodule

module Button (
    input clk,
    input btn,
    output signal
);
    wire deb;
    Debounce btn_deb(.clk(clk), .sig(btn), .debounce(deb));
    OnePulse btn_one(.clock(clk), .signal(deb), .signal_single_pulse(signal));
endmodule

module ImprovedButton (
    input clk,
    input btn,
    output reg signal
);
    parameter interval = 25;
    wire debounce_out, onepulse_out;
    reg next_pulse;
    reg [interval-1:0] cnt, next_cnt;
    always @(posedge clk) begin
        signal <= next_pulse;
        cnt <= next_cnt;
    end
    always @(*) begin
        next_pulse = onepulse_out & (cnt == {interval{1'b1}});
        if (next_pulse)
            next_cnt = {interval{1'b0}};
        else
            next_cnt = (cnt != {interval{1'b1}}) ? cnt + 1'b1 : cnt;
    end
    Debounce db(clk, btn, debounce_out);
    OnePulse op(onepulse_out, debounce_out, clk);
endmodule
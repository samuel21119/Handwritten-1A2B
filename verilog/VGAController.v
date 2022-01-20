`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: vga
/////////////////////////////////////////////////////////////////

module vga_controller
  (
    input wire clk, pclk, rst_n,
    output wire hsync, vsync, valid,
    output wire [9:0] h_cnt,
    output wire [9:0] v_cnt
    );

    reg [9:0] pixel_cnt;
    reg [9:0] line_cnt;
    reg hsync_i, vsync_i;
    wire hsync_default, vsync_default;
    wire [9:0] HD, HF, HS, HB, HT, VD, VF, VS, VB, VT;

    assign HD = 640;
    assign HF = 16;
    assign HS = 96;
    assign HB = 48;
    assign HT = 800;
    assign VD = 480;
    assign VF = 10;
    assign VS = 2;
    assign VB = 33;
    assign VT = 525;
    assign hsync_default = 1'b1;
    assign vsync_default = 1'b1;

    always@(posedge clk)
        if (!rst_n) begin
            pixel_cnt <= 0;
        end else if (pclk) begin
            if (pixel_cnt < (HT - 1))
                    pixel_cnt <= pixel_cnt + 1;
                else
                    pixel_cnt <= 0;
        end else begin
            pixel_cnt <= pixel_cnt;
        end

    always@(posedge clk)
        if (!rst_n) begin
            hsync_i <= hsync_default;
        end else if (pclk) begin
            if ((pixel_cnt >= (HD + HF - 1)) && (pixel_cnt < (HD + HF + HS - 1)))
                hsync_i <= ~hsync_default;
            else
                hsync_i <= hsync_default;
        end else begin
            hsync_i <= hsync_i;
        end

    always@(posedge clk)
        if(!rst_n) begin
            line_cnt <= 0;
        end else if (pclk) begin
            if (pixel_cnt == (HT -1)) begin
                if (line_cnt < (VT - 1))
                    line_cnt <= line_cnt + 1;
                else
                    line_cnt <= 0;
            end else begin
                line_cnt <= line_cnt;
            end
        end else begin
            line_cnt <= line_cnt;
        end

    always@(posedge clk)
        if (!rst_n)
            vsync_i <= vsync_default;
        else if (pclk) begin
            if((line_cnt >= (VD + VF - 1))&&(line_cnt < (VD + VF + VS - 1)))
                vsync_i <= ~vsync_default;
            else
                vsync_i <= vsync_default;
        end else begin
            vsync_i <= vsync_i;
        end

    assign hsync = hsync_i;
    assign vsync = vsync_i;
    assign valid = ((pixel_cnt < HD) && (line_cnt < VD));

    assign h_cnt = (pixel_cnt < HD) ? pixel_cnt:10'd0;
    assign v_cnt = (line_cnt < VD) ? line_cnt:10'd0;

endmodule

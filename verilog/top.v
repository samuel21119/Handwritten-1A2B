`include "VGAController.v"
`include "ClockDivider.v"
`include "UILayer.v"
`include "CanvasLayer.v"
`include "VGARenderer.v"
`include "SegmentDisplay.v"
`include "Button.v"
`include "mouse_demo/Mouse.v"

module top (
   input clk,
   input reset,
   output [3:0] vgaRed,
   output [3:0] vgaGreen,
   output [3:0] vgaBlue,
   output hsync,
   output vsync,
   output [3:0] AN,
   output [6:0] SEG,
   output [15:0] answer,
   inout PS2_CLK,
   inout PS2_DATA
);
    wire clk_25MZ;
    wire clk_seg;
    wire clk_cnt;
    wire rst;
    wire rst_n = ~rst;

    wire VGAValid, hsync, vsync;
    wire [9:0] h_cnt, v_cnt;

    wire [15:0] signal;

    reg [3:0] cnt;

    // mouse signals
    wire [9:0] MOUSE_X_POS, MOUSE_Y_POS;
    wire MOUSE_LEFT, MOUSE_RIGHT, MOUSE_MIDDLE;
    wire enable_mouse_display;

    // mouse layer
    wire [3:0] mouse_cursor_red, mouse_cursor_green, mouse_cursor_blue;
    wire [11:0] mouse_pixel = {mouse_cursor_red, mouse_cursor_green, mouse_cursor_blue};

    // UI layer
    wire [3:0] digitClicked, activeDigits;
    wire canvasLayerEnable, enterButtonClicked, clearButtonClicked;
    wire [3:0] ui_red, ui_green, ui_blue;
    wire [11:0] ui_pixel = {ui_red, ui_green, ui_blue};
    wire [3:0] digitSelected;

    // canvas layer
    wire [6:0] canvasX, canvasY;
    wire [3:0] canvas_red, canvas_green, canvas_blue;
    wire [11:0] canvas_pixel;
    wire [(32*32 - 1):0] inputLayer;
    assign canvas_pixel = {canvas_red, canvas_green, canvas_blue};
    wire empty;

    // DNN output
    wire [3:0] dnn_ans;
    wire dnn_finish;

    // GAME
    wire [15:0] game_signal, game_answer;
    wire isresult;
    wire istitle;

    // onepulse + debounce
    Button rst_btn(clk, reset, rst);

    // VGA controller
    ClockDivider #(.N(2)) clk25(clk, rst_n, clk_25MZ);
    vga_controller vga_ctrl(clk, clk_25MZ, rst_n, hsync, vsync, VGAValid, h_cnt, v_cnt);

    // test
    ClockDivider #(.N(17)) clk_sad(clk, rst_n, clk_seg);
    ClockDivider #(.N(25)) clk_sad2(clk, rst_n, clk_cnt);

    // mouse controller
    mouse mouse_ctrl_inst(
        .clk(clk),
        .h_cntr_reg(h_cnt),
        .v_cntr_reg(v_cnt),
        .enable_mouse_display(enable_mouse_display),
        .MOUSE_X_POS(MOUSE_X_POS),
        .MOUSE_Y_POS(MOUSE_Y_POS),
        .MOUSE_LEFT(MOUSE_LEFT),
        .MOUSE_MIDDLE(MOUSE_MIDDLE),
        .MOUSE_RIGHT(MOUSE_RIGHT),
        .MOUSE_NEW_EVENT(MOUSE_NEW_EVENT),
        .mouse_cursor_red(mouse_cursor_red),
        .mouse_cursor_green(mouse_cursor_green),
        .mouse_cursor_blue(mouse_cursor_blue),
        .PS2_CLK(PS2_CLK),
        .PS2_DATA(PS2_DATA)
    );

    // UI Layer
    UILayer ui_inst(
        clk,
        h_cnt,
        v_cnt,
        MOUSE_X_POS,
        MOUSE_Y_POS,
        MOUSE_LEFT,
        isresult,
        activeDigits,
        signal,
        ui_red,
        ui_green,
        ui_blue,
        canvasLayerEnable,
        enterButtonClicked,
        clearButtonClicked,
        digitClicked
    );

    CanvasLayer #(.originX(20), .originY(140)) canvas_inst(
        clk,
        (rst_n && !clearButtonClicked && !enterButtonClicked),
        h_cnt,
        v_cnt,
        MOUSE_X_POS,
        MOUSE_Y_POS,
        MOUSE_LEFT,
        canvasX,
        canvasY,
        canvas_red,
        canvas_green,
        canvas_blue,
        inputLayer,
        empty
    );

    dnn dnn_m(
        .pixels(inputLayer),
        .clk(clk),
        .rst_n(rst_n),
        .ans(dnn_ans),
        .finish(dnn_finish)
    );

    segment_display seg(clk, clk_seg, {3'd0, canvasX}, {3'd0, canvasY}, !MOUSE_MIDDLE, dnn_ans, AN, SEG);

    // composite layers and output
    VGARenderer renderer(
        VGAValid,
        h_cnt,
        v_cnt,
        ui_pixel,
        canvas_pixel,
        mouse_pixel,
        enable_mouse_display,
        canvasLayerEnable,
        vgaRed,
        vgaGreen,
        vgaBlue
    );

    // GAME MODULE
    Game game_m(
        .clk(clk),
        .rst_n(rst_n),
        .digitClicked(digitClicked),
        .enterButtonClicked(enterButtonClicked),
        .inputNum(dnn_ans),
        .canvasEmpty(empty),
        .digitSelected(activeDigits),
        .signal(game_signal),
        .answer(game_answer),
        .isresult(isresult),
        .istitle(istitle)
    );

    always @(posedge clk) begin
        if (rst_n == 1'b0) begin
            cnt <= 4'b0;
        end else if (clk_cnt) begin
            cnt <= cnt + 1'b1;
        end else begin
            cnt <= cnt;
        end
    end

    assign signal = istitle ? {cnt, cnt, cnt, cnt} : game_signal;
    assign answer = istitle ? 16'b0 : game_answer;
endmodule
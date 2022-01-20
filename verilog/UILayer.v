`include "Button.v"
`include "Components/Digit.v"
`include "Components/UIButton.v"
`include "Components/Canvas.v"

module UILayer (
    input clk,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [9:0] MOUSE_X,
    input [9:0] MOUSE_Y,
    input MOUSE_LEFT,
    input digitBorderDisable,
    input [3:0] activeDigits,
    input [15:0] signal,
    output [3:0] vgaRed,
    output [3:0] vgaGreen,
    output [3:0] vgaBlue,
    output canvasLayerEnable,
    output enterButtonClicked,
    output clearButtonClicked,
    output [3:0] digitClicked
);
    parameter [11:0] defaultBackgroundColor = 12'hFFF;

    wire [3:0] digit [3:0];

    // enable signals of each element
    wire digit1Valid, digit2Valid, digit3Valid, digit4Valid, btn1Valid, btn2Valid, canvasFrameValid;
    // current pixel is element pixel
    wire valid = digit1Valid | digit2Valid | digit3Valid | digit4Valid | btn1Valid | btn2Valid | canvasFrameValid;

    wire insideDrawingArea;
    wire digit1Click, digit2Click, digit3Click, digit4Click;
    wire btn1click, btn2click;

    wire [3:0] digit1Red, digit1Green, digit1Blue;
    wire [3:0] digit2Red, digit2Green, digit2Blue;
    wire [3:0] digit3Red, digit3Green, digit3Blue;
    wire [3:0] digit4Red, digit4Green, digit4Blue;

    wire [3:0] btn1Red, btn1Green, btn1Blue;
    wire [3:0] btn2Red, btn2Green, btn2Blue;

    wire [3:0] canvasFrameRed, canvasFrameGreen, canvasFrameBlue;

    assign digit[0] = signal[3:0];
    assign digit[1] = signal[7:4];
    assign digit[2] = signal[11:8];
    assign digit[3] = signal[15:12];

    Digit #(.originX(16), .originY(16)) digit1(
        h_cnt,
        v_cnt,
        MOUSE_X,
        MOUSE_Y,
        MOUSE_LEFT,
        digit[0],
        digitBorderDisable,
        activeDigits[0],
        digit1Valid,
        digit1Click,
        digit1Red,
        digit1Green,
        digit1Blue
    );

    Digit #(.originX(171), .originY(16)) digit2(
        h_cnt,
        v_cnt,
        MOUSE_X,
        MOUSE_Y,
        MOUSE_LEFT,
        digit[1],
        digitBorderDisable,
        activeDigits[1],
        digit2Valid,
        digit2Click,
        digit2Red,
        digit2Green,
        digit2Blue
    );

    Digit #(.originX(326), .originY(16)) digit3(
        h_cnt,
        v_cnt,
        MOUSE_X,
        MOUSE_Y,
        MOUSE_LEFT,
        digit[2],
        digitBorderDisable,
        activeDigits[2],
        digit3Valid,
        digit3Click,
        digit3Red,
        digit3Green,
        digit3Blue
    );

    Digit #(.originX(481), .originY(16)) digit4(
        h_cnt,
        v_cnt,
        MOUSE_X,
        MOUSE_Y,
        MOUSE_LEFT,
        digit[3],
        digitBorderDisable,
        activeDigits[3],
        digit4Valid,
        digit4Click,
        digit4Red,
        digit4Green,
        digit4Blue
    );

    UIButton #(.originX(366), .originY(146), .backgroundColor(12'h8ce), .onClickBackgroundColor(12'h38a),
               .text1("E"), .text2("n"), .text3("t"), .text4("e"), .text5("r")
    ) enter(
        h_cnt,
        v_cnt,
        MOUSE_X,
        MOUSE_Y,
        MOUSE_LEFT,
        btn1Valid,
        btn1Click,
        btn1Red,
        btn1Green,
        btn1Blue
    );

    UIButton #(.originX(366), .originY(306), .backgroundColor(12'hf88), .onClickBackgroundColor(12'he55),
               .text1("C"), .text2("l"), .text3("e"), .text4({4'd0, 4'ha}), .text5("r")
    ) clear(
        h_cnt,
        v_cnt,
        MOUSE_X,
        MOUSE_Y,
        MOUSE_LEFT,
        btn2Valid,
        btn2Click,
        btn2Red,
        btn2Green,
        btn2Blue
    );

    CanvasFrame #(.originX(16), .originY(136)) canvas(
        h_cnt,
        v_cnt,
        canvasFrameValid,
        insideDrawingArea,
        canvasFrameRed,
        canvasFrameGreen,
        canvasFrameBlue
    );

    // show element pixel if valid; otherwise, show default background color
    assign vgaRed = (valid) ? (digit1Red | digit2Red | digit3Red | digit4Red | btn1Red | btn2Red | canvasFrameRed) : defaultBackgroundColor[11:8];
    assign vgaGreen = (valid) ? (digit1Green | digit2Green | digit3Green | digit4Green | btn1Green | btn2Green | canvasFrameGreen) : defaultBackgroundColor[7:4];
    assign vgaBlue = (valid) ? (digit1Blue | digit2Blue | digit3Blue | digit4Blue | btn1Blue | btn2Blue | canvasFrameBlue) : defaultBackgroundColor[3:0];

    // pass event to top
    assign canvasLayerEnable = insideDrawingArea;

    // onepulse + debounce
    ImprovedButton enter_btn(clk, btn1Click, enterButtonClicked);
    ImprovedButton clean_btn(clk, btn2Click, clearButtonClicked);
    ImprovedButton digit1_btn(clk, digit1Click, digitClicked[0]);
    ImprovedButton digit2_btn(clk, digit2Click, digitClicked[1]);
    ImprovedButton digit3_btn(clk, digit3Click, digitClicked[2]);
    ImprovedButton digit4_btn(clk, digit4Click, digitClicked[3]);

endmodule
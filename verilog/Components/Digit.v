// `include "./Character.v"

module Digit #(
    parameter [9:0] originX = 10'h0,
    parameter [9:0] originY = 10'h0,
    parameter [9:0] width = 10'd143,
    parameter [9:0] height = 10'd110,
    parameter [9:0] borderWidth = 10'd4,
    parameter [11:0] borderColor = 12'h0,
    parameter [11:0] activeBorderColor = 12'h0F0,
    parameter [11:0] backgroundColor = 12'hFFF,
    parameter [11:0] textColor = 12'h000
) (
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [9:0] MOUSE_X,
    input [9:0] MOUSE_Y,
    input MOUSE_LEFT,
    input [3:0] digit,
    input digitBorderDisable,
    input active,
    output valid,
    output onclick,
    output reg [3:0] vgaRed,
    output reg [3:0] vgaGreen,
    output reg [3:0] vgaBlue
);
    localparam [9:0] characterXOffset = 10'd51;
    localparam [9:0] characterYOffset = 10'd15;

    wire [9:0] clientX = h_cnt - originX;
    wire [9:0] clientY = v_cnt - originY;

    wire [9:0] mouseClientX = MOUSE_X - originX;
    wire [9:0] mouseClientY = MOUSE_Y - originY;

    wire mouseHover = (mouseClientX >= 0 && mouseClientX < width) && (mouseClientY >= 0 && mouseClientY < height);
    wire isBorder = (clientX >= 0 && clientX < borderWidth) ||
                    ((width - borderWidth) <= clientX && clientX < width) ||
                    (clientY >= 0 && clientY < borderWidth) ||
                    ((height - borderWidth) <= clientY && clientY < height);

    assign valid = (clientX >= 0 && clientX < width) && (clientY >= 0 && clientY < height);
    assign onclick = mouseHover & MOUSE_LEFT;

    wire characterEnable;

    Character #(.originX(originX + characterXOffset), .originY(originY + characterYOffset)) char(
        {4'd0, digit}, h_cnt, v_cnt, characterEnable
    );

    always @(*) begin
        if (valid) begin
            if (isBorder) {vgaRed, vgaGreen, vgaBlue} = (digitBorderDisable) ? backgroundColor : ((active) ? activeBorderColor : borderColor);
            else {vgaRed, vgaGreen, vgaBlue} = (characterEnable) ? textColor : backgroundColor;
        end else begin
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        end
    end

endmodule
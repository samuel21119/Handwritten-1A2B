// `include "Character.v"

module UIButton #(
    parameter [9:0] originX = 10'h0,
    parameter [9:0] originY = 10'h0,
    parameter [9:0] width = 10'd248,
    parameter [9:0] height = 10'd148,
    parameter [9:0] borderWidth = 10'd4,
    parameter [11:0] borderColor = 12'h0,
    parameter [11:0] onClickBackgroundColor = 12'hFFF,
    parameter [11:0] backgroundColor = 12'hFFF,
    parameter [11:0] textColor = 12'h000,
    parameter [7:0] text1 = " ",
    parameter [7:0] text2 = " ",
    parameter [7:0] text3 = " ",
    parameter [7:0] text4 = " ",
    parameter [7:0] text5 = " "
) (
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [9:0] MOUSE_X,
    input [9:0] MOUSE_Y,
    input MOUSE_LEFT,
    output valid,
    output onclick,
    output reg [3:0] vgaRed,
    output reg [3:0] vgaGreen,
    output reg [3:0] vgaBlue
);
    localparam [9:0] characterXOffset = 10'd24;
    localparam [9:0] characterYOffset = 10'd34;

    localparam [9:0] characterWidth = 10'd40;

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

    assign onclick = mouseHover && MOUSE_LEFT;

    wire char1Enable, char2Enable, char3Enable, char4Enable, char5Enable;
    wire characterEnable = char1Enable | char2Enable | char3Enable | char4Enable | char5Enable;

    Character #(.originX(originX + characterXOffset),
                .originY(originY + characterYOffset)
    ) char1(
        text1, h_cnt, v_cnt, char1Enable
    );
    Character #(.originX(originX + characterXOffset + characterWidth),
                .originY(originY + characterYOffset)
    ) char2(
        text2, h_cnt, v_cnt, char2Enable
    );
    Character #(.originX(originX + characterXOffset + 2 * characterWidth),
                .originY(originY + characterYOffset)
    ) char3(
        text3, h_cnt, v_cnt, char3Enable
    );
    Character #(.originX(originX + characterXOffset + 3 * characterWidth),
                .originY(originY + characterYOffset)
    ) char4(
        text4, h_cnt, v_cnt, char4Enable
    );
    Character #(.originX(originX + characterXOffset + 4 * characterWidth),
                .originY(originY + characterYOffset)
    ) char5(
        text5, h_cnt, v_cnt, char5Enable
    );

    always @(*) begin
        if (valid) begin
            if (isBorder) {vgaRed, vgaGreen, vgaBlue} = borderColor;
            else {vgaRed, vgaGreen, vgaBlue} = (characterEnable) ? textColor : ((onclick) ? onClickBackgroundColor : backgroundColor);
        end else begin
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        end
    end

endmodule
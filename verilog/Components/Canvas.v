// just a frame with border
module CanvasFrame #(
    parameter [9:0] originX = 10'h0,
    parameter [9:0] originY = 10'h0,
    parameter [9:0] width = 10'd328,
    parameter [9:0] height = 10'd328,
    parameter [9:0] borderWidth = 10'd4,
    parameter [11:0] borderColor = 12'h0,
    parameter [11:0] backgroundColor = 12'hFFF
) (
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    output valid,
    output insideDrawingArea,
    output reg [3:0] vgaRed,
    output reg [3:0] vgaGreen,
    output reg [3:0] vgaBlue
);
    wire [9:0] clientX = h_cnt - originX;
    wire [9:0] clientY = v_cnt - originY;

    wire isBorder = (clientX >= 0 && clientX < borderWidth) ||
                    ((width - borderWidth) <= clientX && clientX < width) ||
                    (clientY >= 0 && clientY < borderWidth) ||
                    ((height - borderWidth) <= clientY && clientY < height);

    assign valid = (clientX >= 0 && clientX < width) && (clientY >= 0 && clientY < height);

    // exclude border
    assign insideDrawingArea = (clientX >= borderWidth && clientX < (width - borderWidth)) &&
                          (clientY >= borderWidth && clientY < (height - borderWidth));
    always @(*) begin
        if (valid) begin
            if (isBorder) {vgaRed, vgaGreen, vgaBlue} = borderColor;
            else {vgaRed, vgaGreen, vgaBlue} = backgroundColor;
        end else begin
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        end
    end

endmodule
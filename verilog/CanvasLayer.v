module CanvasLayer #(
    parameter [9:0] originX = 10'd0,
    parameter [9:0] originY = 10'd0,
    parameter [9:0] width = 10'd320,
    parameter [9:0] height = 10'd320,
    parameter [6:0] canvasWidth = 7'd32,
    parameter [6:0] canvasHeight = 7'd32,
    parameter [5:0] modelWidth = 6'd32,
    parameter [5:0] modelHeight = 6'd32
) (
    input clk,
    input rst_n,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [9:0] MOUSE_X,
    input [9:0] MOUSE_Y,
    input MOUSE_LEFT,
    output [6:0] canvasMouseX,
    output [6:0] canvasMouseY,
    output reg [3:0] vgaRed,
    output reg [3:0] vgaGreen,
    output reg [3:0] vgaBlue,
    output [((modelHeight * modelWidth) - 1):0] canvas,
    output empty
);
    localparam [3:0] unitSize = width / canvasWidth;

    reg [((canvasWidth * canvasHeight) - 1) : 0] canvas;

    wire [9:0] clientX = h_cnt - originX;
    wire [9:0] clientY = v_cnt - originY;

    wire [6:0] canvasClientX = clientX / unitSize;
    wire [6:0] canvasClientY = clientY / unitSize;

    wire [9:0] mouseClientX = MOUSE_X - originX;
    wire [9:0] mouseClientY = MOUSE_Y - originY;

    wire mouseHover = (MOUSE_X >= originX && MOUSE_X < (originX + width)) && (MOUSE_Y >= originY && MOUSE_Y < (originY + height));

    assign canvasMouseX = mouseHover ? (mouseClientX / unitSize) : 6'd0;
    assign canvasMouseY = mouseHover ? (mouseClientY / unitSize) : 6'd0;

    assign empty = ~(|canvas);

    wire [9:0] readIndex = canvasClientX + canvasWidth * canvasClientY;
    wire [9:0] writeIndex = canvasMouseX + canvasWidth * canvasMouseY;

    wire [9:0] writeIndexL = writeIndex - 10'd1;
    wire [9:0] writeIndexR = writeIndex + 10'd1;

    wire [9:0] prevRowIndex = (writeIndex < canvasWidth) ? writeIndex : (writeIndex - canvasWidth);
    wire [9:0] prevRowIndexL = prevRowIndex - 10'd1;

    always @(posedge clk) begin
        if (!rst_n) begin
            canvas <= 0;
        end else begin
            if (mouseHover && MOUSE_LEFT) begin
                // 1 * 1 region
                // expand from center (P: pointer position)
                //  P

                canvas[writeIndex] <= 1'b1;
            end else begin
                canvas[writeIndex] <= canvas[writeIndex];
            end
        end
    end

    // render canvas
    always @(*) begin
        if (canvas[readIndex])
            {vgaRed, vgaGreen, vgaBlue} = 12'h000;
        else
            {vgaRed, vgaGreen, vgaBlue} = 12'hFFF;
    end

endmodule
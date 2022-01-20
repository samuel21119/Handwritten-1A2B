// Layers: (top -> down)
// 1. Mouse
// 2. Canvas
// 3. UI

module VGARenderer (
    input valid,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [11:0] ui_pixel,
    input [11:0] canvas_pixel,
    input [11:0] mouse_pixel,
    input mouse_enable,
    input canvas_enable,
    output reg [3:0] vgaRed,
    output reg [3:0] vgaGreen,
    output reg [3:0] vgaBlue
);

    always @(*) begin
        if (!valid) begin
            {vgaRed, vgaGreen, vgaBlue} = 12'h0;
        end else begin
            if (mouse_enable) begin
                {vgaRed, vgaGreen, vgaBlue} = mouse_pixel;
            end else begin
                if (canvas_enable) begin
                    {vgaRed, vgaGreen, vgaBlue} = canvas_pixel;
                end else begin
                    {vgaRed, vgaGreen, vgaBlue} = ui_pixel;
                end
            end
        end
    end

endmodule
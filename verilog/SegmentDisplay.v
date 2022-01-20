module segment_display(
    input clk,
    input dclk,
    input [9:0] MOUSE_X_POS,
    input [9:0] MOUSE_Y_POS,
    input isX,
    input [3:0] predictNum,
    output [3:0] AN,
    output reg [6:0] SEG
);
    // Debug: Show mouse's X-position
    /*
    reg [3:0] AN, AN_next;
    wire [9:0] display_value;
    wire [3:0] DIGIT0, DIGIT1, DIGIT2;
    reg [3:0] value;

    assign display_value = (isX) ? MOUSE_X_POS: MOUSE_Y_POS;
    assign DIGIT0 = display_value % 10;
    assign DIGIT1 = ( display_value / 10 ) % 10;
    assign DIGIT2 = ( display_value / 100 ) % 10;

    always @(posedge clk) begin
        if (dclk)
            AN <= AN_next;
        else
            AN <= AN;
    end

    always@(*)begin
        case (AN)
            4'b1110: AN_next = 4'b1101;
            4'b1101: AN_next = 4'b1011;
            4'b1011: AN_next = 4'b0111;
            default: AN_next = 4'b1110;
        endcase
        case (AN)
            4'b1110: value = DIGIT0;
            4'b1101: value = DIGIT1;
            4'b1011: value = DIGIT2;
            default: value = predictNum;
        endcase
    end
    */

    assign AN = 4'b0;
    wire [3:0] value = predictNum;
    always@(*)begin
        case(value)
        4'd0: SEG = 7'b0000001;
        4'd1: SEG = 7'b1001111;
        4'd2: SEG = 7'b0010010;
        4'd3: SEG = 7'b0000110;
        4'd4: SEG = 7'b1001100;
        4'd5: SEG = 7'b0100100;
        4'd6: SEG = 7'b0100000;
        4'd7: SEG = 7'b0001111;
        4'd8: SEG = 7'b0000000;
        4'd9: SEG = 7'b0000100;
        default: SEG = 7'b1111111;
        endcase
    end
endmodule
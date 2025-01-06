module mod_n_counter_rtl #(parameter n = 4, size = 3) (
    input clk,
    input rst,
    output reg [size-1:0] out
);
    always @(posedge clk or posedge rst) begin
        if (rst) // Active-high reset
            out <= 0;
        else if (out == n-1)
            out <= 0;
        else
            out <= out + 1;
    end
endmodule

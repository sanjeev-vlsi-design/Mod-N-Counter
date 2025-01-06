module mod_n_counter_tb;
 
  parameter n = 4;     
  parameter size = 3;  
  reg clk;
  reg rst;
  wire [size-1:0] out;
  mod_n_counter_rtl #(n, size) uut (
    .clk(clk),
    .rst(rst),
    .out(out)
  );
  initial clk = 0;
  always #5 clk = ~clk; 
  initial begin
    rst = 1;
    #10;        
    rst = 0;    
    #100;
    rst = 1;    
    #20;
    rst = 0; 
    #50;
    $stop;
  end
  initial begin
    $monitor("Time: %0t | Reset: %b | Counter Output: %b", $time, rst, out);
  end
endmodule


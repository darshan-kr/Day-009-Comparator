module tb;
  parameter n = 32;
  reg [n-1:0]a, b;
  wire agb, alb, aeb;
  
  comparator c1(a, b, agb, alb, aeb);
  
  initial begin
    $monitor("a=%b, b=%b, agb=%b, alb=%b, aeb=%b", a, b, agb, alb, aeb);
    $dumpfile("dump.vcd"); $dumpvars;
   
    
    repeat(10) begin
      a = $random;
      b = $random;
      #2;
    end
  end
endmodule

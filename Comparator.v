module comparator#(parameter n = 32)(
  input [n-1:0]a,b,
  output reg agb, alb, aeb);
  
  always@(*)
    begin
      if(a>b)
        begin
          agb = 1'b1;
          alb = 1'b0;
          aeb = 1'b0;
        end
      else if(a<b)
        begin
          agb = 1'b0;
          alb = 1'b1;
          aeb = 1'b0;
        end
      else
        begin
          agb = 1'b0;
          alb = 1'b0;
          aeb = 1'b1;
        end
    end
endmodule

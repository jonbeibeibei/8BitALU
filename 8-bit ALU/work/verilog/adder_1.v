/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder_1 (
    input [5:0] alufn,
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] sum1,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  reg [8:0] sum;
  
  always @* begin
    
    case (alufn[0+1-:2])
      2'h0: begin
        sum = a + b;
      end
      2'h1: begin
        sum = a - b;
      end
      2'h2: begin
        sum = a * b;
      end
      2'h3: begin
        sum = a - (a / b * b);
      end
      default: begin
        sum = a + b;
      end
    endcase
    sum1 = sum[0+7-:8];
    v = (a[7+0-:1] & b[7+0-:1] & (~sum[7+0-:1])) | ((~a[7+0-:1]) & (~b[7+0-:1]) & sum[7+0-:1]);
    n = sum[7+0-:1];
    z = (~|sum);
  end
endmodule
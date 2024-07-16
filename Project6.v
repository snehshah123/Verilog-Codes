module Project6(
  input [3:0] x0,
  input [3:0] x1,
  input [3:0] x2,
  input [3:0] x3,
  input [3:0] h0,
  input [3:0] h1,
  input [3:0] h2,
  input [3:0] h3,
  
  output reg [3:0] y1,
  output reg [3:0] y2,
  output reg [3:0] y3,
  output reg [3:0] y4,
  output reg [3:0] y5,
  output reg [3:0] y6,
  output reg [3:0] y7
  );
  
  always @* begin
    // Perform linear convolution
    y1 = (x1[0] * h1[0]) + (x2[0] * h2[0]) + (x3[0] * h3[0]);
    y2 = (x1[1] * h1[0]) + (x2[1] * h2[0]) + (x3[1] * h3[0]) + (x1[0] * h1[1]) + (x2[0] * h2[1]) + (x3[0] * h3[1]);
    y3 = (x1[2] * h1[0]) + (x2[2] * h2[0]) + (x3[2] * h3[0]) + (x1[1] * h1[1]) + (x2[1] * h2[1]) + (x3[1] * h3[1]) + (x1[0] * h1[2]) + (x2[0] * h2[2]) + (x3[0] * h3[2]);
    y4 = (x1[3] * h1[0]) + (x2[3] * h2[0]) + (x3[3] * h3[0]) + (x1[2] * h1[1]) + (x2[2] * h2[1]) + (x3[2] * h3[1]) + (x1[1] * h1[2]) + (x2[1] * h2[2]) + (x3[1] * h3[2]);
    y5 = (x1[3] * h1[1]) + (x2[3] * h2[1]) + (x3[3] * h3[1]) + (x1[2] * h1[2]) + (x2[2] * h2[2]) + (x3[2] * h3[2]);
    y6 = (x1[3] * h1[2]) + (x2[3] * h2[2]) + (x3[3] * h3[2]);
    y7 = 8'b0000; // y7 is always zero in this example
  end
endmodule

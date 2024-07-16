module Project4 (
  input [3:0] x0 ,
  input [3:0] h,
  output [3:0] y1,
  output [3:0] y2,
  output [3:0] y3,
  output [3:0] y4,
  output [3:0] y5,
  output [3:0] y6,
  output [3:0] y7
  );

  assign y1 = x[0] * h[0];

  assign y2 = x[0] * h[1] + x[1] * h[0];

  assign y3 = x[0] * h[2] + x[1] * h[1] + x[2] * h[0];

  assign y4 = x[0] * h[3] + x[1] * h[2] + x[2] * h[1] + x[3] * h[0];

  assign y5 = x[1] * h[3] + x[2] * h[2] + x[3] * h[1];

  assign y6 = x[2] * h[3] + x[3] * h[2];

  assign y7 = x[3] * h[3];

endmodule

module Project3 (
  input [3:0] x , // Input signal x
  input [3:0] h,  // Input signal h
  output [7:0] y);

  assign y[0] = x[0] * h[0]; // Convolution for n = 0

  // Convolution for n = 1
  assign y[1] = x[0] * h[1] + x[1] * h[0];

  // Convolution for n = 2
  assign y[2] = x[0] * h[2] + x[1] * h[1] + x[2] * h[0];

  // Convolution for n = 3
  assign y[3] = x[0] * h[3] + x[1] * h[2] + x[2] * h[1] + x[3] * h[0];

  // Convolution for n = 4
  assign y[4] = x[1] * h[3] + x[2] * h[2] + x[3] * h[1];

  // Convolution for n = 5
  assign y[5] = x[2] * h[3] + x[3] * h[2];

  // Convolution for n = 6
  assign y[6] = x[3] * h[3];

  // The remaining elements of y are 0

endmodule

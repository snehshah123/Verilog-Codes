module Project5 (
  input [3:0][3:0] x , 
  input [3:0][3:0] h ,
  output [3:0][3:0] y
);

// Convolution for y[0][0]
assign y[0][0] = x[0][0] * h[0][0]; 

// Convolution for y[0][1]  
assign y[0][1] = x[0][0] * h[0][1] + x[0][1] * h[0][0];

// Convolution for y[1][0]
assign y[1][0] = x[0][0] * h[1][0] + x[1][0] * h[0][0];

// Convolution for y[1][1]
assign y[1][1] = x[0][0] * h[1][1] + x[0][1] * h[1][0] + 
                 x[1][0] * h[0][1] + x[1][1] * h[0][0];

					  

endmodule

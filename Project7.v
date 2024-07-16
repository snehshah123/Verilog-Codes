module Project7 (
  input [3:0] x0 ,
  input [3:0] h0 ,
  input [3:0] x1 ,
  input [3:0] h1 ,
  output [6:0] a ,
  output [6:0] b ,
  output [6:0] c ,
  output [6:0] d ,
  output [6:0] y0 ,
  output [6:0] y1 ,
  output [6:0] y2 
  ); 

  assign a[0] = x0[0] * h0[0];
  assign a[1] = x0[0] * h0[1] + x0[1] * h0[0];
  assign a[2] = x0[0] * h0[2] + x0[1] * h0[1] + x0[2] * h0[0];
  assign a[3] = x0[0] * h0[3] + x0[1] * h0[2] + x0[2] * h0[1] + x0[3] * h0[0];
  assign a[4] = x0[1] * h0[3] + x0[2] * h0[2] + x0[3] * h0[1];
  assign a[5] = x0[2] * h0[3] + x0[3] * h0[2];
  assign a[6] = x0[3] * h0[3];
  
  assign b[0] = x1[0] * h0[0];
  assign b[1] = x1[0] * h0[1] + x1[1] * h0[0];
  assign b[2] = x1[0] * h0[2] + x1[1] * h0[1] + x1[2] * h0[0];
  assign b[3] = x1[0] * h0[3] + x1[1] * h0[2] + x1[2] * h0[1] + x1[3] * h0[0];
  assign b[4] = x1[1] * h0[3] + x1[2] * h0[2] + x1[3] * h0[1];
  assign b[5] = x1[2] * h0[3] + x1[3] * h0[2];
  assign b[6] = x1[3] * h0[3];

  assign c[0] = x0[0] * h1[0];
  assign c[1] = x0[0] * h1[1] + x0[1] * h1[0];
  assign c[2] = x0[0] * h1[2] + x0[1] * h1[1] + x0[2] * h1[0];
  assign c[3] = x0[0] * h1[3] + x0[1] * h1[2] + x0[2] * h1[1] + x0[3] * h1[0];
  assign c[4] = x0[1] * h1[3] + x0[2] * h1[2] + x0[3] * h1[1];
  assign c[5] = x0[2] * h1[3] + x0[3] * h1[2];
  assign c[6] = x0[3] * h1[3];

  assign d[0] = x1[0] * h1[0];
  assign d[1] = x1[0] * h1[1] + x1[1] * h1[0];
  assign d[2] = x1[0] * h1[2] + x1[1] * h1[1] + x1[2] * h1[0];
  assign d[3] = x1[0] * h1[3] + x1[1] * h1[2] + x1[2] * h1[1] + x1[3] * h1[0];
  assign d[4] = x1[1] * h1[3] + x1[2] * h1[2] + x1[3] * h1[1];
  assign d[5] = x1[2] * h1[3] + x1[3] * h1[2];
  assign d[6] = x1[3] * h1[3];

  assign y0 = a ;
  assign y1 = b + c ;
  assign y2 = d ;
  
  endmodule
  
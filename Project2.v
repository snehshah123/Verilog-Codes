// Half Adder
module half_adder (
  input a,    // Input 'a'
  input b,    // Input 'b'
  output s,   // Output 's' (Sum)
  output c    // Output 'c' (Carry)
);
  xor gate_xor (s, a, b);  // XOR gate for sum
  and gate_and (c, a, b);  // AND gate for carry
endmodule

// Full Adder
module full_adder(input a, b, cin, output s, co);
  assign s = a ^ b ^ cin;
  assign co = (a & b) | (b & cin) | (cin & a);
endmodule

// Wallace Tree Multiplier
module wallace(input [3:0] A, B, output [7:0] prod);
  wire [3:0] p0, p1, p2, p3;
  wire s11, s12, s13, s14, s15, s22, s23, s24, s25, s26, s32, s33, s34, s35, s36, s37;
  wire c11, c12, c13, c14, c15, c22, c23, c24, c25, c26, c32, c33, c34, c35, c36, c37;

  // Connect the input signals to p0, p1, p2, and p3
  assign p0 = A & {4{B[0]}};
  assign p1 = A & {4{B[1]}};
  assign p2 = A & {4{B[2]}};
  assign p3 = A & {4{B[3]}};

  // Connections to half adder and full adder instances
  half_adder ha11 (p0[1], p1[0], s11, c11);
  full_adder fa12(p0[2], p1[1], p2[0], s12, c12);
  full_adder fa13(p0[3], p1[2], p2[1], s13, c13);
  full_adder fa14(p1[3], p2[2], p3[1], s14, c14);
  half_adder ha15(p2[3], p3[2], s15, c15);

  half_adder ha22(c11, s12, s22, c22);
  full_adder fa23(p3[0], c12, s13, s23, c23);
  full_adder fa24(c13, c32, s14, s24, c24);
  full_adder fa25(c14, c24, s15, s25, c25);
  full_adder fa26(c15, c25, p3[3], s26, c26);

  half_adder ha32(c22, s23, s32, c32);
  half_adder ha34(c23, s24, s34, c34);
  half_adder ha35(c34, s25, s35, c35);
  half_adder ha36(c35, s26, s36, c36);
  half_adder ha37(c36, c26, s37, c37);

  // Output assignments
  assign prod[0] = p0[0];
  assign prod[1] = s11;
  assign prod[2] = s22;
  assign prod[3] = s32;
  assign prod[4] = s34;
  assign prod[5] = s35;
  assign prod[6] = s36;
  assign prod[7] = s37;
endmodule

module Project2(
  input [3:0] A,
  input [3:0] B,
  output [7:0] Y
);
  wire [7:0] temp3;
  wire [7:0] temp4;
  wallace w1(A, B, temp3);
  assign Y = temp3;
endmodule

// 4:1 Mux Function // GateLevel Or Structural
module mux_41(out,a,b,c,d,s0,s1);
	output out;
	input a,b,c,d,s0,s1;
	wire s0bar,s1bar,t4,t3,t2,t1;
	not(s0bar,s0),(s1bar,s1);
	and (t1,a,s0bar,s1bar),(t2,b,s0,s1bar),(t3,c,s0bar,s1),(t4,d,s0,s1);
	or(out,t1,t2,t3,t4);
endmodule


//SIPO Shift Register
module sipo_shift_register_design(input clk,b,output[3:0]q);
	d_ff dut1(.clk(clk),.d(b),.q(q[3]),.rst());
	d_ff dut2(.clk(clk),.d(q[3]),.q(q[2]),.rst());
	d_ff dut3(.clk(clk),.d(q[2]),.q(q[1]),.rst());
	d_ff dut4(.clk(clk),.d(q[1]),.q(q[0]),.rst());
endmodule
/*
// D Flip Flop //Behavioral
module d_ff (
  input clk,    `
  input d,
  output reg q,
  input rst);
  
  always @(posedge clk) 
  begin
    if (rst)
      q <= 1'b0;
    else
      q <= d;
  end
endmodule

//Half Adder // Structural or GateLevel
module half_adder (
  input a,    // Input 'a'
  input b,    // Input 'b'
  output s,   // Output 's' (Sum)
  output c    // Output 'c' (Carry)
);
	xor gate_xor (s, a, b);  // XOR gate for sum
	and gate_and (c, a, b);  // AND gate for carry
endmodule
*/

//Full Adder //Dataflow
module full_adder(a,b,cin,s,co);
	input a,b,cin;
	output s,co;
	assign s = a^b^cin;
	assign co = ((a & b) | (b & cin) | (cin & a));
endmodule

//Wallace Tree Multiplier //Dataflow
module wallace(A,B,prod);
    
    input [3:0] A,B;
    output [7:0] prod;

    wire s11,s12,s13,s14,s15,s22,s23,s24,s25,s26,s32,s33,s34,s35,s36,s37;
    wire c11,c12,c13,c14,c15,c22,c23,c24,c25,c26,c32,c33,c34,c35,c36,c37;
    wire [6:0] p0,p1,p2,p3;

    assign  p0 = A & {4{B[0]}};
    assign  p1 = A & {4{B[1]}};
    assign  p2 = A & {4{B[2]}};
    assign  p3 = A & {4{B[3]}};
 
    assign prod[0] = p0[0];
    assign prod[1] = s11;
    assign prod[2] = s22;
    assign prod[3] = s32;
    assign prod[4] = s34;
    assign prod[5] = s35;
    assign prod[6] = s36;
    assign prod[7] = s37;

    half_adder ha11 (p0[1],p1[0],s11,c11);
    full_adder fa12(p0[2],p1[1],p2[0],s12,c12);
    full_adder fa13(p0[3],p1[2],p2[1],s13,c13);
    full_adder fa14(p1[3],p2[2],p3[1],s14,c14);
    half_adder ha15(p2[3],p3[2],s15,c15);

    half_adder ha22 (c11,s12,s22,c22);
    full_adder fa23 (p3[0],c12,s13,s23,c23);
    full_adder fa24 (c13,c32,s14,s24,c24);
    full_adder fa25 (c14,c24,s15,s25,c25);
    full_adder fa26 (c15,c25,p3[3],s26,c26);

    half_adder ha32(c22,s23,s32,c32);
    half_adder ha34(c23,s24,s34,c34);
    half_adder ha35(c34,s25,s35,c35);
    half_adder ha36(c35,s26,s36,c36);
    half_adder ha37(c36,c26,s37,c37);

endmodule

module Project1(
	input [3:0]A,
	input [3:0]B,
	input reset,
	input clock,
	input sel0,sel1,sel2,sel3,
	output temp1,temp2,
	output [3:0]temp3,temp4,
	output [7:0]Y);
	
	mux_41 m1(temp1,A[0],A[1],A[2],A[3],sel0,sel1);
	mux_41 m2(temp2,B[0],B[1],B[2],B[3],sel2,sel3);
	
	sipo_shift_register_design sipo1(clock,temp1,temp3);
	sipo_shift_register_design sipo2(clock,temp2,temp4);
	
	wallace w1(temp3,temp4,Y);
endmodule

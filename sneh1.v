module sneh1 (i0,i1,i2,i3,s0,s1,a,b,y);
	input i0,i1,i2,i3,s0,s1;
	output a,b;
	output y;
	
	sneh3 mux1(i0,i1,s1,a);
	sneh3 mux2(i2,i3,s1,b);
	sneh3 mux3(a,b,s0,y);
endmodule
	
module sneh3 (i0,i1,s0,y);
	input i0,i1,s0;
	output y;
	assign y = (~s0 & i0) | (s0 & i1) ;
endmodule
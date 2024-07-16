////Behavioral
//module E1(
//	input x ,
//	input y , 
//	output reg g1 , 
//	output reg g2 , 
//	output reg g3 , 
//	output reg g4 , 
//	output reg g5 , 
//	output reg g6 , 
//	output reg g7 
//	) ; 
//
//	always @(*)
//		begin 
//			g1 = x & y ; //And Gate
//			g2 = x | y ; // Or Gate
//			g3 = ~x ; //Not Gate
//			g4 = ~(x & y) ; //Nand Gate
//			g5 = ~(x | y) ; //Nor Gate
//			g6 = x ^ y ; //Xor Gate
//			g7 = ~(x ^ y) ; //Xnor Gate
//		end
//endmodule
		
//Dataflow
//module E1(
//	input x ,
//	input y , 
//	output g1 , 
//	output g2 , 
//	output g3 , 
//	output g4 , 
//	output g5 , 
//	output g6 , 
//	output g7 
//	) ; 		
//	
//	assign g1 = x & y ; //And Gate
//	assign g2 = x | y ; // Or Gate
//	assign g3 = ~x ; //Not Gate
//	assign g4 = ~(x & y) ; //Nand Gate
//	assign g5 = ~(x | y) ; //Nor Gate
//	assign g6 = x ^ y ; //Xor Gate
//	assign g7 = ~(x ^ y) ; //Xnor Gate
//endmodule	

//Gate Level
module E1(
	input x ,
	input y , 
	output g1 , 
	output g2 , 
	output g3 , 
	output g4 , 
	output g5 , 
	output g6 , 
	output g7 
	) ; 	
	
	and(g1 , x , y);
	or(g2 , x , y);
	not(g3 , x);
	nand(g4 , x , y);
	nor(g5 , x , y);
	xor(g6 , x , y);
	xnor(g7 , x , y);
endmodule	
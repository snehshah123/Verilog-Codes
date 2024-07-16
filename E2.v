//module E2(
//	input a ,
//	input b ,
//	input cin ,
//	output reg sum , 
//	output reg cout
//	);
//	
//	initial 
//		begin
//			sum = 0 ;
//			cout = 0 ;
//		end
//		
//	always @(*)
//		begin
//			case({a , b , cin})
//				3'b000 : begin sum = 0 ; cout = 0 ; end
//				3'b001 : begin sum = 1 ; cout = 0 ; end
//				3'b010 : begin sum = 1 ; cout = 0 ; end
//				3'b011 : begin sum = 0 ; cout = 1 ; end
//				3'b100 : begin sum = 1 ; cout = 0 ; end
//				3'b101 : begin sum = 0 ; cout = 1 ; end
//				3'b110 : begin sum = 0 ; cout = 1 ; end
//				3'b111 : begin sum = 1 ; cout = 1 ; end
//				default begin sum = 0 ; cout = 0 ; end
//			endcase
//		end
//endmodule	

//module E2(
//	input a ,
//	input b ,
//	input cin ,
//	output reg sum , 
//	output reg cout ,
//	input mode 
//	);
//	
//	initial 
//		begin
//			sum = 0 ;
//			cout = 0 ;
//		end
//		
//	always @(*)
//		begin
//			case({mode , a , b , cin})
//				4'b0000 : begin sum = 0 ; cout = 0 ; end
//				4'b0001 : begin sum = 1 ; cout = 0 ; end
//				4'b0010 : begin sum = 1 ; cout = 0 ; end
//				4'b0011 : begin sum = 0 ; cout = 1 ; end
//				4'b0100 : begin sum = 1 ; cout = 0 ; end
//				4'b0101 : begin sum = 0 ; cout = 1 ; end
//				4'b0110 : begin sum = 0 ; cout = 1 ; end
//				4'b0111 : begin sum = 1 ; cout = 1 ; end
//				4'b1000 : begin sum = 0 ; cout = 0 ; end
//				4'b1001 : begin sum = 1 ; cout = 1 ; end
//				4'b1010 : begin sum = 1 ; cout = 1 ; end
//				4'b1011 : begin sum = 0 ; cout = 1 ; end
//				4'b1100 : begin sum = 1 ; cout = 0 ; end
//				4'b1101 : begin sum = 0 ; cout = 0 ; end
//				4'b1110 : begin sum = 0 ; cout = 0 ; end
//				4'b1111 : begin sum = 1 ; cout = 1 ; end
//				default begin sum = 0 ; cout = 0 ; end
//			endcase
//		end
//endmodule	

module E2()
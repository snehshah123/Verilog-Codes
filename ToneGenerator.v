module ToneGenerator (
	input clk1 , 
	input reset ,
	output ground , 
	output reg C1 , D , E , F , G , A , B , C2
	) ; 
	
	wire clk2 ; wire clk3 ; wire clk4 ; wire clk5 ; wire clk6 ; wire clk7 ; wire clk8 ; wire clk9 ; 
	
	clk_div_C1  d1(.clk_in(clk1) ,.num(95420), .clk_out(clk2)) ; //SA 0
	clk_div_C1  d2(.clk_in(clk1) ,.num(85174), .clk_out(clk3)) ; //RE 1
	clk_div_C1  d3(.clk_in(clk1) ,.num(75798), .clk_out(clk4)) ; //GA 2
	clk_div_C1  d4(.clk_in(clk1) ,.num(71633), .clk_out(clk5)) ; //MA 3
	clk_div_C1  d5(.clk_in(clk1) ,.num(63776), .clk_out(clk6)) ; //PA 4
	clk_div_C1  d6(.clk_in(clk1) ,.num(56818), .clk_out(clk7)) ; //DHA 5
	clk_div_C1  d7(.clk_in(clk1) ,.num(50604), .clk_out(clk8)) ; //NI 6
	clk_div_C1  d8(.clk_in(clk1) ,.num(47721), .clk_out(clk9)) ; //SAA 7	
	
	initial 
		begin
			C1 = 0 ; D = 0 ; E = 0 ; F = 0 ; G = 0 ; A = 0 ; B = 0 ;	C2 = 0 ;
		end
	
	always @(posedge clk1)
		begin 
			if(reset)
				begin 
					C1 = 0 ; D = 0 ; E = 0 ; F = 0 ; G = 0 ; A = 0 ; B = 0 ; C2 = 0 ;
				end
			else if (!reset)
				begin 
					C1 = clk2 ; D = clk3 ; E = clk4 ; F = clk5 ; G = clk6 ; A = clk7 ; B = clk8 ; C2 = clk9 ;
				end
		end	
		
		assign ground = 0 ;
		
endmodule	

module clk_div_C1 (
	input clk_in ,
	input [22:0]num ,
	output reg clk_out
	) ;
	
	reg [31:0]count ; //17
	
	initial 
		begin 
			count = 0 ; clk_out = 0 ;
		end 
	
	always @(posedge clk_in)
		begin 
			count = count + 1 ; 
			if (count == num)
				begin 
					clk_out = ~clk_out ;
					count = 0 ;
				end 
		end
endmodule	
//GND 12
	
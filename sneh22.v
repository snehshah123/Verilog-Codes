//USR

module sneh22(
	input clk , 
	input rdin ,
	input ldin ,  
	input [1:0]sel , 
	output reg [3:0]pout ,
	output reg rdout ,
	output reg ldout 
	);
	
	reg [3:0]pdin ;
	reg [3:0]prd ;
	
	initial 
		begin
			pout = 4'b0000 ;
			rdout = 1'b0 ;
			ldout = 1'b0 ;
		end
	
	always @(posedge clk)
		begin
			case (sel)
				2'b00 : begin
								pout <= pout ;
						  end		
				2'b01 : begin 
								rdout <= prd[0] ;
								prd[0] <= prd[1] ;
								prd[1] <= prd[2] ;
								prd[2] <= prd[3] ;
								prd[3] <= rdin ;
						  end
				2'b10 : begin 
								ldout <= prd[3] ;
								prd[3] <= prd[2] ;
								prd[2] <= prd[1] ;
								prd[1] <= prd[0] ;
								prd[0] <= ldin ; 
						  end	
				2'b11 : begin
								pdin <= prd ;
								pout <= pdin ;
						  end		
			endcase 
		end
endmodule 		

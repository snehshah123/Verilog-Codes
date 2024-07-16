module sneh67 (
	input [5:0]address ,
	input enable ,
	input clk ,
	input rw ,
	output reg [7:0]data        //inout
	) ;
	
reg [7:0]memory[7:0] ;
integer i ;

initial
	begin
		for (i = 0; i < 8; i = i + 1) begin
			memory[i] = i ;
		end
	end
	
always @(posedge clk)
	begin
		if (enable == 1)
			begin
				data = 0 ;
			end
		else
			begin
				if (rw == 0) //Read
					begin
						data <= memory[address] ;
					end
				else if (rw == 1) //Write
					begin
						memory[address] <= data ;
					end
			end
	end
endmodule

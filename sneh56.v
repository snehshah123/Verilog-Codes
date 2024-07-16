// ROM
module sneh56 (
	input [9:0]address ,
	input enable ,
	input clk ,
	output reg [7:0]data
	) ;

reg [7:0]memory[1023:0] ;
integer i ;

initial
	begin
		for (i = 0; i < 1024; i = i + 1) begin
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
				data <= memory[address] ;
			end
	end
endmodule

module sneh78 (
	input x ,
	input clk ,
	input reset ,
	output reg z
	) ;

reg [1:0]ps ;
reg [1:0]ns ;

localparam s0 = 2'b00 ;
localparam s1 = 2'b01 ;
localparam s2 = 2'b10 ;
localparam s3 = 2'b11 ;
 
initial
	begin
		ps = 2'b00 ;
		ns = 2'b00 ;
		z = 0 ;
	end

always @ (posedge clk)
	begin
		if (reset == 1)
			begin
				ps = s0 ;
			end
		else
			begin
				ps = ns ;
			end
	end

always @(ps , x)
	begin
		case (ps)
			s0 : begin if (x == 0)
					begin
						ns = s0 ;
						z = 0 ;
					end
						if (x == 1)
							begin
								ns = s1 ;
								z = 0 ;
							end
					end
			s1 : begin if (x == 0)
					begin
						ns = s2 ;
						z = 0 ;
					end
						if (x == 1)
							begin
								ns = s1 ;
								z = 0 ;
							end
					end
			s2 : begin if (x == 0)
					begin
						ns = s0 ;
						z = 0 ;
					end
						if (x == 1)
							begin
								ns = s1 ;
								z = 1 ;
							end
					end
			default : begin  
							ns = s0 ;
							z = 0 ;
						 end
		endcase
	end
endmodule

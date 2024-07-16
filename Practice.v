module Practice(
	input clk,
	input rstn,
	input u_d,
	output reg [3:0]out = 0
	);
	
	always @(posedge clk)
	begin 
		if (!rstn)
			out<=0;
		else 
			if (u_d)
				if (out == 6)
					out <= 0;
				else 
					out <= out+1;
	end
endmodule	
// EXP3 Q1 , 2
//Asynchronous Reset
/* 
module sneh21(
input d ,
input clk ,
input reset ,
output reg q ,
output qbar
);

always @(posedge clk or negedge reset)
begin
if (!reset)
q = 0 ;
else if (reset) begin
q = d ;
end
end

assign qbar = ~q ;
endmodule


module sneh21(
input j ,
input k ,
input clk ,
input reset ,
output reg q ,
output qbar
);

always @(posedge clk or negedge reset)
begin
if (!reset)
q = 0 ;
else if (reset) begin
if (j==0 && k==0)
q = q ;
if (j==0 && k==1)
q = 0 ;
if (j==1 && k==0)
q = 1 ;
if (j==1 && k==1)
q = ~q ;
end
end

assign qbar = ~q ;
endmodule


module sneh21(
input t ,
input clk ,
input reset ,
output reg q ,
output qbar
);

always @(posedge clk or negedge reset)
begin
if (!reset)
q = 0 ;
else if (reset) begin
if (!t)
q = q ;
else
q = ~q ;
end
end

assign qbar = ~q ;
endmodule


module sneh21(
input s ,
input r ,
input clk ,
input reset ,
output reg q ,
output qbar
);

always @(posedge clk or negedge reset)
begin
if (!reset)
q = 0 ;
else if (reset) begin
if (s==0 && r==0)
q = q ;
if (s==0 && r==1)
q = 0 ;
if (s==1 && r==0)
q = 1 ;
end
end

assign qbar = ~q ;
endmodule

//For synchronous reset remove negedge reset
*/
//4-bit Up Counter (Asynchronous)

module sneh21(
input clk ,
input rst ,
input m ,
output reg [3:0]q
);
initial
begin
q = 0 ;
end
always @(posedge clk)
begin
if (!rst)
begin
q <= 4'b0000 ;
end
else if (rst)
begin
if (m == 0)
q <= q + 4'b0001 ;
if (m == 1)
q <= q - 4'b0001 ;
end
end
endmodule

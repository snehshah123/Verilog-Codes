module snehexp5(
	Mode,
	CLK,
	HIGH,
	Q3,
	Q2,
	Q1,
	Q0
);


input wire	Mode;
input wire	CLK;
input wire	HIGH;
output reg	Q3;
output wire	Q2;
output wire	Q1;
output wire	Q0;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
reg	JKFF_A;
reg	JKFF_2;
reg	JKFF_3;

assign	Q2 = JKFF_3;
assign	Q1 = JKFF_2;
assign	Q0 = JKFF_A;

always@(posedge SYNTHESIZED_WIRE_0)
begin
	JKFF_2 <= ~JKFF_2 & HIGH | JKFF_2 & ~HIGH;
end


always@(posedge SYNTHESIZED_WIRE_1)
begin
	JKFF_3 <= ~JKFF_3 & HIGH | JKFF_3 & ~HIGH;
end


always@(posedge SYNTHESIZED_WIRE_2)
begin
	Q3 <= ~Q3 & HIGH | Q3 & ~HIGH;
end


always@(posedge CLK)
begin
	JKFF_A <= ~JKFF_A & HIGH | JKFF_A & ~HIGH;
end

assign	SYNTHESIZED_WIRE_0 = Mode ^ JKFF_A;

assign	SYNTHESIZED_WIRE_1 = Mode ^ JKFF_2;

assign	SYNTHESIZED_WIRE_2 = Mode ^ JKFF_3;
endmodule

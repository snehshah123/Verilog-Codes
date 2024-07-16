// PROJECT: LOGIC IC TESTER
// IC Number: 7400(1, 7402(2, 7404(3), 7408(4), 7432(5, 7486(6), 74266(7)
// non blocking assignment: reg type output

module project_tester(a, b, n ,op1, op2, op3, op4);
	input a, b, op1, op2, op3, op4;
	input [2:0]n;

	wire[2:0]n1 ;	
	
	mapping m1(n ,n1);
// manually input -> mapping to switches
	truthtable truthtable1(y,a,b,n1);
	compare compare1(y,op1,op2,op3,op4,pass,fail);
endmodule

module mapping(input [2:0]n , output reg [2:0]n1);
	always @(*)
	begin
		case(n)
			3'b000: n1=3'b001; //nand
			3'b001: n1=3'b010; //nor
			3'b010: n1=3'b011; //not
			3'b011: n1=3'b100; //and
			3'b100: n1=3'b101; //or
			3'b101: n1=3'b110; //xor
			3'b110: n1=3'b111; //xnor
			3'b111: n1=1'bx;
		endcase
	end
endmodule
                                                                                       
//COMPARE BLOCK
module compare (y, op1 ,op2 ,op3 ,op4, pass, fail);
	input [3:0]y, op1 ,op2 ,op3 ,op4;
	output reg pass, fail;
	
	always@(*) 
	begin
		if (op1==y[0] &&  op2==y[1] && op3==y[2] && op4==y[3])
			begin 
				pass<=1; fail<=0;
				$display("PASS");
			end
		else
			begin 
				pass<=0; fail<=1;
				$display("FAIL") ; 
			end
	end		
endmodule

// TRUTHTABLE OF BASIC GATES
module truthtable(y,a,b,n1);
	input a,b;
	input [2:0]n1 ;
	output reg[3:0]y;
	
	always @(*)
		begin
			case (n1)  

				001: //nand
				begin
					if(a==0 && b==0) y[0]<=1;
					if(a==0 && b==1) y[1]<=1;
					if(a==1 && b==0) y[2]<=1;
					if(a==1 && b==1) y[3]<=0;
				end
				010: //nor
				begin
					if(a==0 && b==0) y[0]<=1;
					if(a==0 && b==1) y[1]<=0;
					if(a==1 && b==0) y[2]<=0;
					if(a==1 && b==1) y[3]<=0;
				end	
				
				011: //not
				begin
					if(a==0) y[0]<=1;
					if(a==1) y[1]<=0;
					y[2] <= 1'bx;
					y[3] <= 1'bx;
				end

				100: //and
				begin
					if(a==0 && b==0) y[0]<=0;
					if(a==0 && b==1) y[1]<=0;
					if(a==1 && b==0) y[2]<=0;
					if(a==1 && b==1) y[3]<=1;
				end

				101: //or
				begin
					if(a==0 && b==0) y[0]<=0;
					if(a==0 && b==1) y[1]<=1;
					if(a==1 && b==0) y[2]<=1;
					if(a==1 && b==1) y[3]<=1;
				end	

				110: //xor
				begin
					if(a==0 && b==0) y[0]<=0;
					if(a==0 && b==1) y[1]<=1;
					if(a==1 && b==0) y[2]<=1;
					if(a==1 && b==1) y[3]<=0;
				end	

				111: //xnor
				begin
					if(a==0 && b==0) y[0]<=1;
					if(a==0 && b==1) y[1]<=0;
					if(a==1 && b==0) y[2]<=0;
					if(a==1 && b==1) y[3]<=1;
				end

				default: $display("Enter valid IC number");

			endcase
		end
endmodule

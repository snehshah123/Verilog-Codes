/*

module sneh20(input a,b,cin,output reg sum,cout);

always@(*)
begin
	case({a,b,cin}) 
		3'b000: begin sum=0;cout=0; end
		3'b001: begin sum=1;cout=0; end
		3'b010: begin sum=1;cout=0 ;end
		3'b011: begin sum=0;cout=1 ;end
		3'b100: begin sum=1;cout=0 ;end
		3'b101: begin sum=0;cout=1 ;end
		3'b110: begin sum=0;cout=1; end
		3'b111: begin sum=1;cout=1; end
	endcase
end

endmodule


module sneh20(
    input wire a,
    input wire b,
    input wire mode,
    output sum,
    output wire borrow
);

assign sum = mode ? a ^ b : a ^ b ^ mode;
assign borrow = mode ? ~(a & b) : a & b; 

endmodule


module sneh20(
    input  a,
    input  b,
    input  mode, 
    output reg sum,
    output reg borrow
);

always @(*) begin
    if (mode == 0) begin
        sum = a + b; 
        borrow = 0;
    end else begin
        sum = a - b;
        borrow = (a < b) ? 1 : 0;
    end
end

endmodule


module sneh20(input a, b, cin, output reg sum, cout);

always @(*) begin
    if ({a, b, cin} == 3'b000) begin
        sum = 0;
        cout = 0;
    end else if ({a, b, cin} == 3'b001) begin
        sum = 1;
        cout = 0;
    end else if ({a, b, cin} == 3'b010) begin
        sum = 1;
        cout = 0;
    end else if ({a, b, cin} == 3'b011) begin
        sum = 0;
        cout = 1;
    end else if ({a, b, cin} == 3'b100) begin
        sum = 1;
        cout = 0;
    end else if ({a, b, cin} == 3'b101) begin
        sum = 0;
        cout = 1;
    end else if ({a, b, cin} == 3'b110) begin
        sum = 0;
        cout = 1;
    end else begin 
        sum = 1;
        cout = 1;
    end
end

endmodule


module sneh20(input a, b, cin, output reg sum, cout);

always @(*) begin
    if (a == 0) begin
        if (b == 0) begin
            if (cin == 0) begin
                sum = 0;
                cout = 0;
            end else begin
                sum = 1;
                cout = 0;
            end
        end else begin 
            if (cin == 0) begin
                sum = 1;
                cout = 0;
            end else begin 
                sum = 0;
                cout = 1;
            end
        end
    end else begin 
        if (b == 0) begin
            if (cin == 0) begin
                sum = 1;
                cout = 0;
            end else begin 
                sum = 0;
                cout = 1;
            end
        end else begin
            if (cin == 0) begin
                sum = 0;
                cout = 1;
            end else begin
                sum = 1;
                cout = 1;
            end
        end
    end
end

endmodule


module sneh20(
    input wire [3:0] data, 
    input wire [1:0] sel,      
    output reg out            
);

always @(*) begin
    case(sel)
        2'b00: out = data[0];
        2'b01: out = data[1];
        2'b10: out = data[2];
        2'b11: out = data[3];
        default: out = 0;
    endcase
end

endmodule

*/
module sneh20(
    input wire [1:0] input_code, 
    output reg [3:0] output_code  
);

always @(*) begin
    case(input_code)
        2'b00: output_code = 4'b0001;
        2'b01: output_code = 4'b0010;
        2'b10: output_code = 4'b0100;
        2'b11: output_code = 4'b1000;
        default: output_code = 4'bxxxx;
    endcase
end

endmodule

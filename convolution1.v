module convolution1(
    input wire [7:0] signal1,
    input wire [7:0] signal2,
    output wire [15:0] result
);

    // Internal variables
    reg [15:0] temp_result [0:15];
    reg [7:0] index1, index2;
    reg [15:0] sum;

    always @* begin
        sum = 16'b0; // Initialize the sum

        // Perform convolution
        for (index1 = 0; index1 < 8; index1 = index1 + 1) begin
            for (index2 = 0; index2 < 8; index2 = index2 + 1) begin
                temp_result[index1 + index2] = signal1[index1] * signal2[index2];
                sum = sum + temp_result[index1 + index2];
            end
        end
    end

    assign result = sum;

endmodule

module convolution1_testbench;

    // Define the input signals
    reg [7:0] signal1;
    reg [7:0] signal2;

    // Instantiate the convolution1 module
    wire [15:0] result;
    convolution1 u1(
        .signal1(signal1),
        .signal2(signal2),
        .result(result)
    );

    // Initialize the input signals and display the convolution result
    initial begin
        signal1 = 8'b11111111;
        signal2 = 8'b00001001;

        // Wait for a few simulation cycles
        #10;

        // Display the convolution result
        $display("Convolution result = %d", result);

        // End the simulation
        $finish;
    end

endmodule

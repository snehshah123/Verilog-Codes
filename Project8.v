module Project8 (
  input [3:0] x0,
  input [3:0] h0,
  input [3:0] x1,
  input [3:0] h1,
  output reg[6:0] y0,
  output reg[6:0] y1,
  output reg[6:0] y2
);

  reg [6:0] a, b, c, d;
  integer i, j;
  integer n = 7 ;

  always @* begin
    for (i = 0; i < 7; i = i + 1) begin
      a[i] = 0;
      for (j = 0; j <= i && j < 4; j = j + 1) begin
        if (i == 4 && j > 0) begin
          a[i] = a[i] + x0[j] * h0[i - j];
        end else if (i == 5 && j > 1) begin
          a[i] = a[i] + x0[j] * h0[i - j];
        end else if (i == 6 && j > 2) begin
          a[i] = a[i] + x0[j] * h0[i - j];
        end else if (i < 4 && j < 4) begin
          a[i] = a[i] + x0[j] * h0[i - j];
        end
      end
    end
  end

  always @* begin
    for (i = 0; i < 7; i = i + 1) begin
      b[i] = 0;
      for (j = 0; j <= i && j < 4; j = j + 1) begin
        if (i == 4 && j > 0) begin
          b[i] = b[i] + x0[j] * h1[i - j];
        end else if (i == 5 && j > 1) begin
          b[i] = b[i] + x0[j] * h1[i - j];
        end else if (i == 6 && j > 2) begin
          b[i] = b[i] + x0[j] * h1[i - j];
        end else if (i < 4 && j < 4) begin
          b[i] = b[i] + x0[j] * h1[i - j];
        end
      end
    end
  end

  always @* begin
    for (i = 0; i < 7; i = i + 1) begin
      c[i] = 0;
      for (j = 0; j <= i && j < 4; j = j + 1) begin
        if (i == 4 && j > 0) begin
          c[i] = c[i] + x1[j] * h0[i - j];
        end else if (i == 5 && j > 1) begin
          c[i] = c[i] + x1[j] * h0[i - j];
        end else if (i == 6 && j > 2) begin
          c[i] = c[i] + x1[j] * h0[i - j];
        end else if (i < 4 && j < 4) begin
          c[i] = c[i] + x1[j] * h0[i - j];
        end
      end
    end
  end

  always @* begin
    for (i = 0; i < 7; i = i + 1) begin
      d[i] = 0;
      for (j = 0; j <= i && j < 4; j = j + 1) begin
        if (i == 4 && j > 0) begin
          d[i] = d[i] + x1[j] * h1[i - j];
        end else if (i == 5 && j > 1) begin
          d[i] = d[i] + x1[j] * h1[i - j];
        end else if (i == 6 && j > 2) begin
          d[i] = d[i] + x1[j] * h1[i - j];
        end else if (i < 4 && j < 4) begin
          d[i] = d[i] + x1[j] * h1[i - j];
        end
      end
    end
  end
 
  always @* begin
    y0 = a;
    y1 = b + c;
    y2 = d;
  end

endmodule

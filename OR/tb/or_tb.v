
module OR_tb;

// Parameters
localparam WIDTH = 5;

//Ports
reg  clk; 
reg  [WIDTH-1:0] a;
reg  [WIDTH-1:0] b;
wire [WIDTH-1:0] z;
integer i;

OR #(
    .WIDTH(WIDTH)
)
OR_inst (
    .a(a),
    .b(b),
    .z(z)
);

always #5 clk = !clk;

initial begin
    {a, b, clk} = 0;
    for (i = 0; i < 10; i = i + 1) begin
        repeat(1) @(negedge clk)
        a = $random;
        b = $random;
    end
    #100
    $finish;
end

initial begin
    begin
        $dumpfile("OR.vcd");
        $dumpvars;
    end
end

endmodule

module NOT_tb;

// Parameters
localparam WIDTH = 5;

//Ports
reg  clk; 
reg  [WIDTH-1:0] a;
wire [WIDTH-1:0] z;
integer i;

NOT #(
    .WIDTH(WIDTH)
)
NOT_inst (
    .a(a),
    .z(z)
);

always #5 clk = !clk;

initial begin
    {a, clk} = 0;
    for (i = 0; i < 10; i = i + 1) begin
        repeat(1) @(negedge clk)
        a = $random;
    end
    #100
    $finish;
end

initial begin
    begin
        $dumpfile("NOT.vcd");
        $dumpvars;
    end
end

endmodule
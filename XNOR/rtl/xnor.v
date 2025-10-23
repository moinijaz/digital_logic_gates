module XNOR #(
    parameter WIDTH = 10
)(
    input wire  [WIDTH-1:0] a,
    input wire  [WIDTH-1:0] b,
    output wire [WIDTH-1:0] z
);

assign z = a ~^ b;

endmodule
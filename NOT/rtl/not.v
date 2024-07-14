module NOT #(
    WIDTH = 10
)(
    input wire  [WIDTH-1:0] a,
    output wire [WIDTH-1:0] z
);

assign z = ~a;

endmodule
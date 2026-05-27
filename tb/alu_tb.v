module alu_tb;

reg [3:0] a, b;
reg [2:0] sel;
wire [3:0] y;

alu uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);

    a = 4'd5; b = 4'd3;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;

    $finish;
end
    initial begin
        $monitor("Time=%0t | a=%d b=%d sel=%b | y=%d", $time, a, b, sel, y);
    end


endmodule
/*//design code

module full_add(input a,b,cin,output sum,cout);
assign sum = a^b^cin;
assign cout = (a&b)|(b&cin)|(a&cin);
endmodule*/

/*// testbench
module tb_fulladd ();
reg a,b,cin;
wire sum,cout;

full_add dut (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin

a=0; b=0; cin=0;

$display("a = %b,b = %b,cin = %b,sum = %b,cout = %b,",a,b,cin,sum,cout);
#10 a=0; b=1; cin=0;
$display("a = %b,b = %b,cin = %b,sum = %b,cout = %b,",a,b,cin,sum,cout);
#10 a=0; b=1; cin=1;
$display("a = %b,b = %b,cin = %b,sum = %b,cout = %b,",a,b,cin,sum,cout);
#10 a=1; b=0; cin=1;
$display("a = %b,b = %b,cin = %b,sum = %b,cout = %b,",a,b,cin,sum,cout);

#10 $finish;
end
endmodule


//mux 2_1

module mux_21(
input a,b,sel,
output y);
assign y = sel ? b : a;
endmodule

//mux testbench
module tb_mux();
reg a,b,sel;
wire y;

mux_21 dut (.a(a),.b(b),.sel(sel),.y(y));

initial begin

$monitor("a = %b,b = %b,sel = %b,y = %b",a,b,sel,y);

repeat(10)begin
a = $random;
b = $random;
sel = $random;
#10;
end
$finish;
end
endmodule

//1bit comparator

module comp_1bit(a,b,eq,gt,lt);
input a,b;
output eq,gt,lt;
assign eq = (a == b);
assign gt = (a > b);
assign lt = (a < b);
endmodule

//testbench code
module tb_comp();
reg a,b;
wire eq,gt,lt;

comparator dut (.a(a),.b(b),.eq(eq),.gt(gt),.lt(lt));

initial begin

$display ("vlsi course code");
$display (" | a | b | eq | gt | lt |");
$monitor ("@%t a = %b,b = %b,eq = %b,gt = %b,lt =%b",a,b,eq,gt,lt);

for(int i = 0; i < 5; i = i+1)begin
a = $random;
b = $random;
#10;
end
$finish;
end
endmodule*/


//jk flip flop
module jk_ff(
input j,k,clk,rst,
output reg q);
always @(posedge clk or posedge rst)begin
if(rst)
q <= 0;
else begin
case({j,k})
  2'b00 = q <= q;
  2'b01 = q <= 0;
  2'b10 = q <= 1;
  2'b11 = q <= ~q;
endcase
end
end
endmodule

//jk testbench
module test_bench();
reg j,k,clk,rst;
wire q;

jk_ff dut (.j(j),.k(k),.clk(clk),.rst(rst),.q(q));

initial begin
clk = 0;
always #5 clk = ~clk;
end 

initial begin

$monitor ("j = %b,k = %b,rst = %b,q = %b");

repeat(10)begin
j = $random;
k = $random;
#10;
end
$finish;
end
endmodule






















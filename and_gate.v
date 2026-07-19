/*//gate modelling(structural)

module and_(a,b,y);
input a,b;
output y;
and(y,a,b);
endmodule

//dataflow modelling

module and_12(input a,b,output y);
assign y = a&b;
endmodule

//behavioural modelling

module and_gate(input a,b,output reg y);
begin
always@(*)
y  <= a&b;
end
endmodule*/


//pipo shift register
module pipo_str(
input clk,rst,load,
input [3:0]din,
output reg [3:0]dout);
always @(posedge clk or posedge rst)begin
if(rst)
dout <= 4'b0000;
else if(load)
dout <= din;
end
endmodule

//testbench pipo
module tb_pipo_sr();
reg clk,rst,load;
reg [3:0]din;
wire [3:0]dout;
integer i;

pipo_str dut (.clk(clk),.rst(rst),.din(din),.load(load),.dout(dout));

initial clk = 0;
always #5 clk = ~clk;

initial begin
$monitor("load = %b,din = %b,dout = %b",load din,dout);
rst = 1;
#10 rst = 0;
for (i = 0; i < 10; i = i+1)begin
din = $random;
load = 1;
#20 load = 0;
#10 load = 1;
#10 load = 0;
#20;
end
$finish;
end
endmodule






















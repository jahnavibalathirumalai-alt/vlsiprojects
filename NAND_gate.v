//gate modelling(structural)

module nand_(a,b,y);
input a,b;
output y;
nand(y,a,b);
endmodule

//dataflow modelling

module nand_12(input a,b,output y);
assign y = ~(a&b);
endmodule

//behavioural modelling

module not_gate(input a,b,output reg y);
begin
always@(*)
y  <= ~(a&b);
end
endmodule

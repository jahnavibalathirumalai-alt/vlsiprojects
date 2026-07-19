//gate modelling(structural)

module nor_(a,b,y);
input a,b;
output y;
nor(y,a,b);
endmodule

//dataflow modelling

module nor_12(input a,b,output y);
assign y = ~(a|b);
endmodule

//behavioural modelling

module nor_gate(input a,b,output reg y);
begin
always@(*)
y  <= ~(a|b);
end
endmodule

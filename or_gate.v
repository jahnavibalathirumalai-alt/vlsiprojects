//gate modelling(structural)

module or_(a,b,y);
input a,b;
output y;
or(y,a,b);
endmodule

//dataflow modelling

module or_12(input a,b,output y);
assign y = a|b;
endmodule

//behavioural modelling

module or_gate(input a,b,output reg y);
begin
always@(*)
y  <= a|b;
end
endmodule


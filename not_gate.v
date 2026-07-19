//gate modelling(structural)

module not_(a,y);
input a;
output y;
not(y,a);
endmodule

//dataflow modelling

module not_12(input a,output y);
assign y = ~a;
endmodule

//behavioural modelling

module not_gate(input a,output reg y);
begin
always@(*)
y  <= ~a;
end
endmodule


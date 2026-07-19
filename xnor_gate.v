//structural modelling

module xnor_(input a,b,output y);
xnor(y,a,b);
endmodule

//dataflow modelling

module xnor_12(input a,b,output y);
assign y = ~(a^b);
endmodule

//behavioural modelling

module xnor_23(input a,b,output reg y);
begin
always@(*)
y <= ~(a^b);
end
endmodule 

//structural modelling

module xor_(input a,b,output y);
xor(y,a,b);
endmodule

//dataflow modelling

module xor_12(input a,b,output y);
assign y = a^b;
endmodule

//behavioural modelling

module xor_23(input a,b,output reg y);
begin
always@(*)
y <= a^b;
end
endmodule 

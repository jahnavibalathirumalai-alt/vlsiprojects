//half adder structural modelling(gate level)

module half_adder_1(input a,b,output sum,carry);
xor(sum,a,b);
and(carry,a,b);
endmodule

//dataflow modelling 

module half_adder_2(input a,b,output sum,carry);
assign sum = a^b;
assign carry = a&b;
endmodule

//behaviour modelling

module half_adder_3(input a,b,output reg sum,carry);
always@(*)begin
sum = a^b;
carry = a&b;
end
endmodule

//half_subtractor

module half_sub(input a,b,output diff,borrow);
assign diff = a^b;
assign borrow = (~a)&b;
endmodule
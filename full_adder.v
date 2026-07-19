//full adder
module full_add(input a,b,cin,output sum,cout);
assign sum = a^b^cin;
assign cout = (a&b)|(b&cin)|(a&cin);
endmodule

//full subtractor
module full_sub(input a,b,c,output diff,borrow);
assign diff = a^b^c;
assign borrow =(b&(~c))|(~(b^c))&a;
endmodule
 
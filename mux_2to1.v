//mux 2*1
module mux_2to1(input i0,i1,sel,output out);
wire w1;
not(w1,sel);
and(w2,i0,w1);
and(w3,i1,sel);
or(out,w2,w3);
endmodule


//mux
module mux_2to1(input [1:0]i,sel,output out);
assign out = (sel) ? i[0] : i[1];
endmodule 


//demux
module demux_12(input d,sel,output reg [0:1]y);
always @(*)begin
case(sel)
     1'b0 : y[0] = d;
     1'b1 : y[1] = d;
endcase
end
endmodule


//encoder
module encod_12(input [3:0]a,output reg [1:0]y);
always@(*)begin
case(a)
     4'b0000 : y = 1'b00;

     4'b0001 : y = 1'b01;

     4'b0010 : y = 1'b10;

     4'b0011 : y = 1'b11;

endcase
end
endmodule


/*//decoder
module decod_12(input [1:0]a,output reg [3:0]y);
always@(*)begin
case({a,b})
     2'b00 : y = 4'b0000;

     2'b01 : y = 4'b0001;

     2'b10 : y = 4'b0010;

     4'b11 : y = 4'b0011;
default : y = 4'b0000;
endcase
end
endmodule

///comparator 2bit
module comp_12(
input [1:0]a,
input [1:0]b,
output reg A_gt_b,
output reg A_lt_b,
);
always@(*)begin
if (a == b)begin
    A_eq_b = 1;
    A_gt_b = 0;
    A_lt_b = 0;
end
else if (a > b)begin
    A_eq_b = 0;
    A_gt_b = 1;
    A_lt_b = 0;
end
else  begin
    A_eq_b = 0;
    A_gt_b = 0;
    A_lt_b = 1;
end
end
endmodule*/
















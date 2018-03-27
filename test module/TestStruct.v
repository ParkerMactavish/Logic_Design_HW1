module test;
	reg a, b, carry_in;
	wire struct_sum, struct_carry_out;
	
	full_adder_struct FA1(a, b, carry_in, struct_sum, struct_carry_out);
	
	initial begin
	
		a=1'b0;b=1'b0;carry_in=1'b0;
	#1	a=1'b0;b=1'b0;carry_in=1'b1;
	#1	a=1'b0;b=1'b1;carry_in=1'b0;
	#1	a=1'b0;b=1'b1;carry_in=1'b1;
	#1	a=1'b1;b=1'b0;carry_in=1'b0;
	#1	a=1'b1;b=1'b0;carry_in=1'b1;
	#1	a=1'b1;b=1'b1;carry_in=1'b0;
	#1	a=1'b1;b=1'b1;carry_in=1'b1;
	#1;
	
	end
	
	initial begin	
	$monitor("Structural Input1:%b, Input2:%b, Input3:%b, Sum:%b, carry_out:%b", a, b, carry_in, struct_sum, struct_carry_out);	
	end
	
	initial begin
	
	$dumpfile("TestStruct.vcd");
	$dumpvars;
	
	end
	
endmodule


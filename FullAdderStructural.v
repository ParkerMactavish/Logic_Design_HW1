module full_adder_struct(Sin1, Sin2, Scarry_in, Ssum, Scarry_out);
	input Sin1, Sin2, Scarry_in;
	output Ssum, Scarry_out;
	
	wire in[2:0], not_in[2:0], sum_not_and_input[3:0], carry_not_and_input[2:0];
	
	assign in[0]=Sin1;
	assign in[1]=Sin2;
	assign in[2]=Scarry_in;
	
	not not1(not_in[0], in[0]);
	not not2(not_in[1], in[1]);
	not not3(not_in[2], in[2]);
	
	nand nand1(sum_not_and_input[0], in[0], in[1], in[2]);
	nand nand2(sum_not_and_input[1], in[0], not_in[1], not_in[2]);
	nand nand3(sum_not_and_input[2], not_in[0], in[1], not_in[2]);
	nand nand4(sum_not_and_input[3], not_in[0], not_in[1], in[2]);
	
	
	nand nand5(carry_not_and_input[0], in[0], in[1]);
	nand nand6(carry_not_and_input[1], in[0], in[2]);
	nand nand7(carry_not_and_input[2], in[1], in[2]);
	
	nand nand8(Ssum, sum_not_and_input[0], sum_not_and_input[1], sum_not_and_input[2], sum_not_and_input[3]);
	nand nand9(Scarry_out, carry_not_and_input[0], carry_not_and_input[1], carry_not_and_input[2]);
	
endmodule


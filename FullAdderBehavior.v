module full_adder_behave(Bin1, Bin2, Bcarry_in, Bsum, Bcarry_out);
	input Bin1, Bin2, Bcarry_in;
	output Bsum, Bcarry_out;
	
	wire sum_not_and_input[3:0], carry_not_and_input[2:0];
	
	assign sum_not_and_input[0]=~(Bin1&Bin2&Bcarry_in);
	assign sum_not_and_input[1]=~(Bin1&~Bin2&~Bcarry_in);	
	assign sum_not_and_input[2]=~(~Bin1&Bin2&~Bcarry_in);
	assign sum_not_and_input[3]=~(~Bin1&~Bin2&Bcarry_in);
	
	assign carry_not_and_input[0]=~(Bin1&Bin2);
	assign carry_not_and_input[1]=~(Bin1&Bcarry_in);
	assign carry_not_and_input[2]=~(Bin2&Bcarry_in);
	
	assign Bsum=~(sum_not_and_input[0]&sum_not_and_input[1]&sum_not_and_input[2]& sum_not_and_input[3]);
	assign Bcarry_out=~(carry_not_and_input[0]&carry_not_and_input[1]&carry_not_and_input[2]);
	
endmodule


module full_adder_behave(IN1, IN2, Carry_In, Sum, Carry_Out);
	input IN1, IN2, Carry_In;
	output Sum, Carry_Out;
	
	wire sum_not_and_input[3:0], carry_not_and_input[2:0];
	
	assign sum_not_and_input[0]=~(IN1&IN2&Carry_In);
	assign sum_not_and_input[1]=~(IN1&~IN2&~Carry_In);	
	assign sum_not_and_input[2]=~(~IN1&IN2&~Carry_In);
	assign sum_not_and_input[3]=~(~IN1&~IN2&Carry_In);
	
	assign carry_not_and_input[0]=~(IN1&IN2);
	assign carry_not_and_input[1]=~(IN1&Carry_In);
	assign carry_not_and_input[2]=~(IN2&Carry_In);
	
	assign Sum=~(sum_not_and_input[0]&sum_not_and_input[1]&sum_not_and_input[2]& sum_not_and_input[3]);
	assign Carry_Out=~(carry_not_and_input[0]&carry_not_and_input[1]&carry_not_and_input[2]);
	
endmodule


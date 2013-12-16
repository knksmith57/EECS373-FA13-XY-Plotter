// servo_pwm.v
module servo_pwm(
	/*** Inputs ***/
	fab_clk,
	reset,
	write_pen,

	/*** Outputs ***/
	pwm_output
);
	input fab_clk, reset;
	input [17:0] write_pen;

	output reg pwm_output;

	reg [31:0] counter;

	/*** Pulse widths for up and down states ***/
	`define PULSE_PERIOD 1000000
	
	always @(posedge fab_clk) begin
		if (counter >= `PULSE_PERIOD) begin
			counter <= 0;
		end else begin
			counter <= counter + 1;
		end
	end

	always @* begin
		if (counter <= write_pen) begin
			pwm_output = 1;
		end else begin
			pwm_output = 0;
		end
	end

endmodule

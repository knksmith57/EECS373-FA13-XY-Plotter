// stepper_motor.v
module stepper_motor_control(
	fab_clk,
	reset,

	/*** Inputs ***/
	num_step_movements,
	step_movement_period,
	global_position,
	GO,

	/*** Outputs ***/
	updated_num_step_movements,
	updated_global_position,
	motor_output
);

	input 		 	 fab_clk, reset;
	input [15:0]	 num_step_movements;
	input [31:0]	 step_movement_period;
	input [15:0]	 global_position;
	input wire GO;

	output reg [15:0] updated_num_step_movements;
	output reg [15:0] updated_global_position;
	output reg [3:0] motor_output;

	reg [3:0] state;
	reg [3:0] next_state;

	reg [32:0] counter;

	/*** Intermediate variables ***/
	wire step_forward, step_backward;
	
	assign step_forward = GO && (num_step_movements > 0) && (counter >= step_movement_period) && ~num_step_movements[15];
	assign step_backward = GO && (num_step_movements > 0) && (counter >= step_movement_period) && num_step_movements[15];

	/*** State Transitions ***/
	`define A_ON 4'b1000
	`define B_ON 4'b0100
	`define C_ON 4'b0010
	`define D_ON 4'b0001
	`define AD_ON 4'b1001
	`define AB_ON 4'b1100
	`define BC_ON 4'b0110
	`define CD_ON 4'b0011

	// Determine next state transition
	always @* begin
		case (state)
			`A_ON:
			begin
				next_state = (step_forward) ? `AB_ON : 
							 (step_backward) ? `AD_ON : `A_ON;
			end

			`B_ON:
			begin
				next_state = (step_forward) ? `BC_ON : 
							 (step_backward) ? `AB_ON : `B_ON;
			end

			`C_ON:
			begin
				next_state = (step_forward) ? `CD_ON : 
							 (step_backward) ? `BC_ON : `C_ON;
			end

			`D_ON:
			begin
				next_state = (step_forward) ? `AD_ON : 
							 (step_backward) ? `CD_ON : `D_ON;
			end

			`AB_ON:
			begin
				next_state = (step_forward) ? `B_ON : 
							 (step_backward) ? `A_ON : `AB_ON;
			end

			`BC_ON:
			begin
				next_state = (step_forward) ? `C_ON : 
							 (step_backward) ? `B_ON : `BC_ON;
			end

			`CD_ON:
			begin
				next_state = (step_forward) ? `D_ON : 
							 (step_backward) ? `C_ON : `CD_ON;
			end

			`AD_ON:
			begin
				next_state = (step_forward) ? `A_ON : 
							 (step_backward) ? `D_ON : `AD_ON;
			end

			default: begin
				// Use Defaults Above
			end
		endcase
	end

	// Flip flops for latching the values
	always @(posedge fab_clk)
	begin
		if (~reset) begin
			state <= `D_ON;
			counter <= 0;
		end else if (counter >= step_movement_period) begin
			counter <= 0;
			state <= next_state;
		end else begin
			counter <= counter + 1;
			state <= next_state;
		end
	end

	// Outputs
	always @*
	begin
		updated_global_position = (step_forward) ? global_position + 1 :
								  (step_backward) ? global_position - 1 : global_position;

		updated_num_step_movements = (step_forward) ? num_step_movements - 1 :
								     (step_backward) ? num_step_movements + 1 : num_step_movements;

		motor_output = state;
	end

endmodule
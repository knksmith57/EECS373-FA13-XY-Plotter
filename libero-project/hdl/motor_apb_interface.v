// motor_apb_interface.v
module motor_apb_interface(
	/*** APB3 BUS INTERFACE ***/
	PCLK,
	PRESERN,
	PSEL,
	PENABLE,
	PREADY,
	PSLVERR,
	PWRITE,
	PADDR,
	PWDATA,
	PRDATA,

	/*** I/O Port Declaration ***/
	global_reset,
	num_step_movement_x,
	step_movement_period_x,
	updated_num_step_movement_x,
	global_position_x,
	updated_global_position_x,
	num_step_movement_y,
	step_movement_period_y,
	updated_num_step_movement_y,
	global_position_y,
	updated_global_position_y,
	GO,
	pen_write,

	/*** Interrupt ***/
	FAB_INT

	/*** Test Output ***/
);

	input PCLK; 			// clock
	input PRESERN; 			// system reset
	input PSEL;				// peripheral select
	input PENABLE;			// distinguishes access phase
	output reg PREADY;		// peripheral ready signal
	output wire PSLVERR;	// error signal
	input PWRITE;			// distinguishes read and write cycles

	input [7:0]	PADDR;			// I/O address
	input wire [31:0] PWDATA;	// data from processor to I/O device (32-bits)
	output reg [31:0] PRDATA;	// data to processor from I/O device (32-bits)

	input wire global_reset;
	output reg [15:0] num_step_movement_x;
	output reg [31:0] step_movement_period_x;
	input wire [15:0] updated_num_step_movement_x;
	output reg [15:0] global_position_x;
	input wire [15:0] updated_global_position_x;
	output reg [15:0] num_step_movement_y;
	output reg [31:0] step_movement_period_y;
	input wire [15:0] updated_num_step_movement_y;
	output reg [15:0] global_position_y;
	input wire [15:0] updated_global_position_y;
	output reg GO;
	output reg [17:0] pen_write; // 18 bits

	output reg FAB_INT;

	assign PSLVERR = 0;

	wire write_enable = (PENABLE && PWRITE && PSEL);
	wire read_enable = (!PWRITE && PSEL);

	assign write_enable_test = write_enable;
	assign pwrite_test = PWRITE;
	assign psel_test = PSEL;

	/*** Write/Read Data Registers ***/
	reg [15:0] numStepsRegister_x;
	reg [31:0] periodRegister_x;
	reg [15:0] numStepsRegister_y;
	reg [31:0] periodRegister_y;
	reg [17:0] penWrite;
	reg goRegister;

	/*** Additional Read Data Registers ***/
	reg [15:0] globalPositionRegister_x;
	reg [15:0] globalPositionRegister_y;
	reg [15:0] finishedGlobalPositionRegister_x;
	reg [15:0] finishedGlobalPositionRegister_y;

	always @(posedge PCLK) begin
		if (~PRESERN || ~global_reset) begin
			numStepsRegister_x 				<= 16'h00000000;
			periodRegister_x 				<= 32'h00000000;
			numStepsRegister_y 				<= 16'h00000000;
			periodRegister_y 				<= 32'h00000000;
			goRegister 						<= 0;
			globalPositionRegister_x 			<= 16'h00000000;
			finishedGlobalPositionRegister_x 	<= 16'h00000000;
			globalPositionRegister_y 			<= 16'h00000000;
			finishedGlobalPositionRegister_y 	<= 16'h00000000;
			penWrite							<= 18'd130000;
		end else if (write_enable) begin
			case(PADDR[7:2])
				6'b000000: // numStepsRegister_x
				begin
					numStepsRegister_x <= PWDATA;
					finishedGlobalPositionRegister_x <= globalPositionRegister_x + PWDATA;
				end
				6'b000001: // periodRegister_x
				begin
					periodRegister_x <= PWDATA;
				end
				6'b000010: // numStepsRegister_y
				begin
					numStepsRegister_y <= PWDATA;
					finishedGlobalPositionRegister_y <= globalPositionRegister_y + PWDATA;
				end
				6'b000011: // periodRegister_y
				begin
					periodRegister_y <= PWDATA;
				end
				6'b000101: // globalPositionRegister_x
				begin
					globalPositionRegister_x <= PWDATA;
					finishedGlobalPositionRegister_x <= PWDATA;
				end
				6'b000110: // globalPositionRegister_y
				begin
					globalPositionRegister_y <= PWDATA;
					finishedGlobalPositionRegister_y <= PWDATA;
				end
				6'b000100: // goRegister
				begin
					goRegister <= PWDATA;
				end
				6'b001001: // penWrite
				begin
					penWrite <= PWDATA;
				end
			endcase
		end else if (goRegister && globalPositionRegister_x == finishedGlobalPositionRegister_x &&
					 globalPositionRegister_y == finishedGlobalPositionRegister_y) begin
			goRegister <= 0;
			FAB_INT <= 1;
		end else begin
			/*** Update the global position registers ***/
			globalPositionRegister_x <= updated_global_position_x;
			globalPositionRegister_y <= updated_global_position_y;

			/*** Decrement/Increment the steps taken by the motor ***/
			numStepsRegister_x <= updated_num_step_movement_x;
			numStepsRegister_y <= updated_num_step_movement_y;

			/*** Turn off the interrupt ***/
			FAB_INT <= 0;
		end
	end

	/*** Handles Reads from APB Bus ***/
	always @(posedge PCLK) begin
		case(PADDR[7:2])
			6'b000000: // numStepsRegister_x
			begin
				PRDATA[31:0] <= numStepsRegister_x;
			end
			6'b000001: // periodRegister_x
			begin
				PRDATA[31:0] <= periodRegister_x;
			end
			6'b000010: // numStepsRegister_y
			begin
				PRDATA[31:0] <= numStepsRegister_y;
			end
			6'b000011: // periodRegister_y
			begin
				PRDATA[31:0] <= periodRegister_y;
			end
			6'b000100: // goRegister
			begin
				PRDATA[31:0] <= goRegister;
			end
			6'b000101: // globalPositionRegister_x
			begin
				PRDATA[31:0] <= globalPositionRegister_x;
			end
			6'b000110: // globalPositionRegister_y
			begin
				PRDATA[31:0] <= globalPositionRegister_y;
			end
			6'b000111: // finishedGlobalPositionRegister_x
			begin
				PRDATA[31:0] <= finishedGlobalPositionRegister_x;
			end
			6'b001000: // finishedGlobalPositionRegister_y
			begin
				PRDATA[31:0] <= finishedGlobalPositionRegister_y;
			end
		endcase
	end

	/*** Set outputs ***/
	always @* begin
		if (goRegister[0]) begin
			GO = 1'b1;
			PREADY = 1'b0;
		end else begin
			GO = 1'b0;
			PREADY = 1'b1;
		end

		num_step_movement_x = numStepsRegister_x;
		step_movement_period_x = periodRegister_x;
		global_position_x = globalPositionRegister_x;

		num_step_movement_y = numStepsRegister_y;
		step_movement_period_y = periodRegister_y;
		global_position_y = globalPositionRegister_y;

		pen_write = penWrite;
	end

endmodule
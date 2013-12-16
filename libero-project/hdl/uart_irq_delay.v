// uart_irq_delay.v
module uart_irq_delay (
	/*** Inputs ***/
	rx,
	fab_clk,
	reset,

	/*** Outputs ***/
	int,
	edge_detected
);

input rx, fab_clk, reset;
output reg int;
output reg edge_detected;
reg neg_edge_detected;

reg [1:0]  	last_input;
reg 		counting_enable;
reg [16:0] 	counter;


/*** How many clock ticks to burn before accepting another edge trigger ***/
`define HOLD_HIGH	17'd10000
`define DELAY 		17'd60000


always @(posedge fab_clk)
begin
	if((~counting_enable) && neg_edge_detected ) begin 	// detect falling edge
		counting_enable 	<= 1;
	end

	if( counting_enable && (counter < `DELAY) )
	begin
		if( counter < `HOLD_HIGH )
			int <= 1;
		else
			int <= 0;

		counter <= counter + 1;
	end
	else if( counting_enable && (counter >= `DELAY) )
	begin
		counter <= 0;
		counting_enable <= 0;
	end

	// shift register to detect falling edge
	if(~reset) begin
		counting_enable <= 0;
		counter[16:0] <= 17'h00000;
		last_input[1:0] <= 2'h0;
	end
	else begin
		last_input[0] <= rx;
		last_input[1] <= last_input[0];
	end

	neg_edge_detected <= last_input[0] & (~last_input[1]);
	edge_detected <= neg_edge_detected;
end

endmodule
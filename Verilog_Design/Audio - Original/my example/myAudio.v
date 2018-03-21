module myAudio (
	CLOCK_50,
	reset,
	AUD_ADCDAT,
	
	AUD_BCLK,
	AUD_ADCLRCK,
	AUD_DACLRCK,
	write_ready,
	read_ready,
	
	AUD_XCK,
	AUD_DACDAT
);
 
	input CLOCK_50, reset, AUD_ADCDAT;
	inout AUD_BCLK, AUD_ADCLRCK, AUD_DACLRCK;
	output AUD_XCK, AUD_DACDAT, write_ready, read_ready;

	wire l_channel_audio, r_channel_audio, read_enable_wire, write_enable_wire;
	reg read_enable, write_enable;

	Audio_Controller audioAudio_Controller(
		// Inputs
		.CLOCK_50(CLOCK_50),
		.reset(reset),
	
		.read_audio_in(read_enable),
		.left_channel_audio_out(l_channel_audio),
		.right_channel_audio_out(r_channel_audio),
		.write_audio_out(write_enable),

		.AUD_ADCDAT(AUD_ADCDAT),

		// Bidirectionals
		.AUD_BCLK(AUD_BCLK),
		.AUD_ADCLRCK(AUD_ADCLRCK),
		.AUD_DACLRCK(AUD_DACLRCK),

		// Outputs
		.left_channel_audio_in(l_channel_audio),
		.right_channel_audio_in(r_channel_audio),
		.audio_in_available(read_ready),

		.audio_out_allowed(write_ready),

		.AUD_XCK(AUD_XCK),
		.AUD_DACDAT(AUD_DACDAT)
	);

	
	always @(posedge CLOCK_50)
	begin
		write_enable <= 1'b1;
		read_enable <= 1'b1;
	end
		
endmodule

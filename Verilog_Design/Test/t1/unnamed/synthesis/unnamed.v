// unnamed.v

// Generated using ACDS version 17.1 590

`timescale 1 ps / 1 ps
module unnamed (
		input  wire       stsinkvalid,   //   avalon_streaming_sink.valid
		input  wire [7:0] stsinkdata,    //                        .data
		output wire       stsinkready,   //                        .ready
		input  wire       stsourceready, // avalon_streaming_source.ready
		output wire       stsourcevalid, //                        .valid
		output wire [7:0] stsourcedata,  //                        .data
		input  wire       sysclk,        //              clock_sink.clk
		input  wire       nreset,        //        clock_sink_reset.reset_n
		input  wire       mosi,          //                export_0.mosi
		input  wire       nss,           //                        .nss
		inout  wire       miso,          //                        .miso
		input  wire       sclk           //                        .sclk
	);

	SPIPhy #(
		.SYNC_DEPTH (2)
	) spislave_0 (
		.sysclk        (sysclk),        //              clock_sink.clk
		.nreset        (nreset),        //        clock_sink_reset.reset_n
		.mosi          (mosi),          //                export_0.export
		.nss           (nss),           //                        .export
		.miso          (miso),          //                        .export
		.sclk          (sclk),          //                        .export
		.stsourceready (stsourceready), // avalon_streaming_source.ready
		.stsourcevalid (stsourcevalid), //                        .valid
		.stsourcedata  (stsourcedata),  //                        .data
		.stsinkvalid   (stsinkvalid),   //   avalon_streaming_sink.valid
		.stsinkdata    (stsinkdata),    //                        .data
		.stsinkready   (stsinkready)    //                        .ready
	);

endmodule

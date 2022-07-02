module shift_reg_pipo(
	input reset_n,
	input clk,
    input [3:0] d,
	output reg [3:0] q
    );
	
	// Async negative reset_n is used
	// The input data is the same as the output data
	// This can be used as a "pipeline register"
	always @(posedge clk or negedge reset_n) begin
	    if (!reset_n)
		    q <= 4'b0;
	    else
		    q[3:0] <= d[3:0];  
	end

endmodule


`timescale 1us/1ns
module tb_shift_reg_pipo();
	
	// Testbench variables
    reg [3:0] d;
	reg clk = 0;
	reg reset_n;
	wire [3:0] q;
    integer i;
	
	// Instantiate the DUT
    shift_reg_pipo PIPO0(
	    .reset_n(reset_n),
	    .clk    (clk    ),
        .d      (d      ),
	    .q      (q      )
    );
	
	// Create the clock signal
	always begin
	    #0.5 clk = ~clk;
	end
	
    // Create stimulus	  
    initial begin
	    #1; // apply reset to the circuit
        reset_n = 0; d = 0;		
		#1.3; // release the reset
		reset_n = 1;
		
        // Wait for the positive edge of clk
		// and change the data input d
		for (i=0; i<5; i=i+1) begin
           @(posedge clk); d = $random;
		end	
	end
	
    // This will stop the simulator when the time expires
    initial begin
        #20 $finish;
    end  
endmodule
{"threads":[{"position":0,"start":0,"end":624,"connection":"open"},{"position":1247,"start":625,"end":1247,"connection":"closed"}],"url":"https://att-c.udemycdn.com/2021-08-31_14-45-18-2d8040fc03206d8d74e5d2046ed8243d/original.v?response-content-disposition=attachment%3B+filename%3Dshift_reg_pipo.v&Expires=1632531454&Signature=E~VBNhbp4SY0pfnxNY68eTlNRnwu96otLEr5lP1Rk0CddwQDSP3xXNj4T0-dq57Cb2KfM-myehtLK9tRbhNL1FkDnO2ten4xAfvzFTrFvtKd8UIdFAKXIRV9YZbbS7hV7F4DgeSZSJE-B-24RafQGYbL7A9xZMGHYDHSYgnKMi3ABbVB6CBIxchbFwLnJeKQw2VecDEIBy41frxs29rCgCBpJXI~9OHQLRCy-b09qXMf1xktvHmd6Qfx4agPQzTdx7VEWWmpAvF9bOuTAuRu1asJ09MpdrZ0XG5X5w0l15xgBAnM3oO1jj50W7zo5fEineEeKlfZsLZQdNl4xgyKFg__&Key-Pair-Id=APKAITJV77WS5ZT7262A","method":"GET","port":443,"downloadSize":1247,"headers":{"content-type":"binary/octet-stream","content-length":"1247","connection":"close","date":"Fri, 24 Sep 2021 20:31:18 GMT","last-modified":"Tue, 31 Aug 2021 14:45:19 GMT","etag":"\"013c1dffa66886a079d6ab470e4025a1\"","x-amz-server-side-encryption":"AES256","x-amz-meta-qqfilename":"shift_reg_pipo.v","x-amz-version-id":"UHyJjh186O7JuFk9hMk7dsDDM.tQVVQD","content-disposition":"attachment; filename=shift_reg_pipo.v","accept-ranges":"bytes","server":"AmazonS3","x-edge-origin-shield-skipped":"0, 0","x-cache":"Miss from cloudfront","via":"1.1 ba5b5e2e7fd98c4a472633bc4c1d4480.cloudfront.net (CloudFront)","x-amz-cf-pop":"FRA2-C1","x-amz-cf-id":"Zxt04LlWvNsKX6T_ISwx0NxOoZ889_sJ7SKdanpyZhTuFQ5Q8u14dw=="}}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
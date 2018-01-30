`timescale 1ns/1ps
module axi_tb();
	parameter  C_M00_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000;
	parameter integer C_M00_AXI_BURST_LEN	= 16;
	parameter integer C_M00_AXI_ID_WIDTH	= 4;
	parameter integer C_M00_AXI_ADDR_WIDTH	= 32;
	parameter integer C_M00_AXI_DATA_WIDTH	= 32;
	parameter integer C_M00_AXI_AWUSER_WIDTH	= 0;
	parameter integer C_M00_AXI_ARUSER_WIDTH	= 0;
	parameter integer C_M00_AXI_WUSER_WIDTH	= 0;
	parameter integer C_M00_AXI_RUSER_WIDTH	= 0;
	parameter integer C_M00_AXI_BUSER_WIDTH	= 0;
	wire  m00_axi_init_axi_txn,
		m00_axi_txn_done,
		m00_axi_error,
		m00_axi_aclk,
		m00_axi_aresetn;
	wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_awid;
	wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr;
	wire [7 : 0] m00_axi_awlen;
	wire [2 : 0] m00_axi_awsize;
	wire [1 : 0] m00_axi_awburst;
	wire m00_axi_awlock;
	wire [3 : 0] m00_axi_awcache;
	wire [2 : 0] m00_axi_awprot;
	wire [3 : 0] m00_axi_awqos;
	wire [C_M00_AXI_AWUSER_WIDTH-1 : 0] m00_axi_awuser;
	wire m00_axi_awvalid,
		m00_axi_awready;
	wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata;
	wire [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb;
	wire m00_axi_wlast;
	wire [C_M00_AXI_WUSER_WIDTH-1 : 0] m00_axi_wuser;
	wire m00_axi_wvalid,
		m00_axi_wready;
	wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_bid;
	wire [1 : 0] m00_axi_bresp;
	wire [C_M00_AXI_BUSER_WIDTH-1 : 0] m00_axi_buser;
	wire m00_axi_bvalid,
		m00_axi_bready;
	wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_arid;
	wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr;
	wire [7 : 0] m00_axi_arlen;
	wire [2 : 0] m00_axi_arsize;
	wire [1 : 0] m00_axi_arburst;
	wire m00_axi_arlock;
	wire [3 : 0] m00_axi_arcache;
	wire [2 : 0] m00_axi_arprot;
	wire [3 : 0] m00_axi_arqos;
	wire [C_M00_AXI_ARUSER_WIDTH-1 : 0] m00_axi_aruser;
	wire m00_axi_arvalid;
	wire m00_axi_arready;
	wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_rid;
	wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata;
	wire [1 : 0] m00_axi_rresp;
	wire m00_axi_rlast;
	wire [C_M00_AXI_RUSER_WIDTH-1 : 0] m00_axi_ruser;
	wire m00_axi_rvalid,
		m00_axi_rready;
		
	initial begin
		#0000 m00_axi_aclk=1'b0;
		forever #0050 m00_axi_aclkk=~m00_axi_aclk;
	end
	
	initial begin
		#0100 m00_axi_init_axi_txn=1'b1;
	end
	
	initial begin
		m00_axi_awready=1'b1;
		m00_axi_wready=1'b1;
	end
	
	initial begin
		$dumpfile (axi_tb.vcd);
		$dumpvars;
	end
	
	initial begin
		#3000 $stop;
	end
endmodule
	


`timescale 1 ns / 1 ps

	module axi_controller_v1_1 #
	(
		// Users to add parameters here
		parameter t_0=3'b000, 
		parameter t_1=3'b001, 
		parameter t_2=3'b010,
		parameter t_3=3'b011, 
		parameter t_4=3'b100, 
		parameter t_5=3'b101, 
		parameter t_6=3'b110,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface M00_AXI
		parameter  C_M00_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M00_AXI_BURST_LEN	= 16,
		parameter integer C_M00_AXI_ID_WIDTH	= 1,
		parameter integer C_M00_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M00_AXI_DATA_WIDTH	= 32,
		parameter integer C_M00_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_WUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_RUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_BUSER_WIDTH	= 0
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Master Bus Interface M00_AXI
		input wire  m00_axi_init_axi_txn,
		output wire  m00_axi_txn_done,
		output wire  m00_axi_error,
		input wire  m00_axi_aclk,
		input wire  m00_axi_aresetn,
		output reg [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_awid,
		output reg [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
		output reg [7 : 0] m00_axi_awlen,
		output reg [2 : 0] m00_axi_awsize,
		output reg [1 : 0] m00_axi_awburst,
		output wire  m00_axi_awlock,
		output reg [3 : 0] m00_axi_awcache,
		output reg [2 : 0] m00_axi_awprot,
		output reg [3 : 0] m00_axi_awqos,
		output reg [C_M00_AXI_AWUSER_WIDTH-1 : 0] m00_axi_awuser,
		output reg  m00_axi_awvalid,
		input wire  m00_axi_awready,
		output reg [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
		output reg [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
		output reg  m00_axi_wlast,
		output reg [C_M00_AXI_WUSER_WIDTH-1 : 0] m00_axi_wuser,
		output reg  m00_axi_wvalid,
		input wire  m00_axi_wready,
		input wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_bid,
		input wire [1 : 0] m00_axi_bresp,
		input wire [C_M00_AXI_BUSER_WIDTH-1 : 0] m00_axi_buser,
		input wire  m00_axi_bvalid,
		output reg  m00_axi_bready,
		output reg [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_arid,
		output reg [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
		output reg [7 : 0] m00_axi_arlen,
		output reg [2 : 0] m00_axi_arsize,
		output reg [1 : 0] m00_axi_arburst,
		output wire  m00_axi_arlock,
		output reg [3 : 0] m00_axi_arcache,
		output reg [2 : 0] m00_axi_arprot,
		output reg [3 : 0] m00_axi_arqos,
		output reg [C_M00_AXI_ARUSER_WIDTH-1 : 0] m00_axi_aruser,
		output wire  m00_axi_arvalid,
		input wire  m00_axi_arready,
		input wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_rid,
		input wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
		input wire [1 : 0] m00_axi_rresp,
		input wire  m00_axi_rlast,
		input wire [C_M00_AXI_RUSER_WIDTH-1 : 0] m00_axi_ruser,
		input wire  m00_axi_rvalid,
		output wire  m00_axi_rready
	);
// Instantiation of Axi Bus Interface M00_AXI
	axi_controller_v1_1_M00_AXI # ( 
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_BURST_LEN(C_M00_AXI_BURST_LEN),
		.C_M_AXI_ID_WIDTH(C_M00_AXI_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH(C_M00_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH),
		.C_M_AXI_AWUSER_WIDTH(C_M00_AXI_AWUSER_WIDTH),
		.C_M_AXI_ARUSER_WIDTH(C_M00_AXI_ARUSER_WIDTH),
		.C_M_AXI_WUSER_WIDTH(C_M00_AXI_WUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH(C_M00_AXI_RUSER_WIDTH),
		.C_M_AXI_BUSER_WIDTH(C_M00_AXI_BUSER_WIDTH)
	) axi_controller_v1_1_M00_AXI_inst (
		.INIT_AXI_TXN(m00_axi_init_axi_txn),
		.TXN_DONE(m00_axi_txn_done),
		.ERROR(m00_axi_error),
		.M_AXI_ACLK(m00_axi_aclk),
		.M_AXI_ARESETN(m00_axi_aresetn),
		.M_AXI_AWID(m00_axi_awid),
		.M_AXI_AWADDR(m00_axi_awaddr),
		.M_AXI_AWLEN(m00_axi_awlen),
		.M_AXI_AWSIZE(m00_axi_awsize),
		.M_AXI_AWBURST(m00_axi_awburst),
		.M_AXI_AWLOCK(m00_axi_awlock),
		.M_AXI_AWCACHE(m00_axi_awcache),
		.M_AXI_AWPROT(m00_axi_awprot),
		.M_AXI_AWQOS(m00_axi_awqos),
		.M_AXI_AWUSER(m00_axi_awuser),
		.M_AXI_AWVALID(m00_axi_awvalid),
		.M_AXI_AWREADY(m00_axi_awready),
		.M_AXI_WDATA(m00_axi_wdata),
		.M_AXI_WSTRB(m00_axi_wstrb),
		.M_AXI_WLAST(m00_axi_wlast),
		.M_AXI_WUSER(m00_axi_wuser),
		.M_AXI_WVALID(m00_axi_wvalid),
		.M_AXI_WREADY(m00_axi_wready),
		.M_AXI_BID(m00_axi_bid),
		.M_AXI_BRESP(m00_axi_bresp),
		.M_AXI_BUSER(m00_axi_buser),
		.M_AXI_BVALID(m00_axi_bvalid),
		.M_AXI_BREADY(m00_axi_bready),
		.M_AXI_ARID(m00_axi_arid),
		.M_AXI_ARADDR(m00_axi_araddr),
		.M_AXI_ARLEN(m00_axi_arlen),
		.M_AXI_ARSIZE(m00_axi_arsize),
		.M_AXI_ARBURST(m00_axi_arburst),
		.M_AXI_ARLOCK(m00_axi_arlock),
		.M_AXI_ARCACHE(m00_axi_arcache),
		.M_AXI_ARPROT(m00_axi_arprot),
		.M_AXI_ARQOS(m00_axi_arqos),
		.M_AXI_ARUSER(m00_axi_aruser),
		.M_AXI_ARVALID(m00_axi_arvalid),
		.M_AXI_ARREADY(m00_axi_arready),
		.M_AXI_RID(m00_axi_rid),
		.M_AXI_RDATA(m00_axi_rdata),
		.M_AXI_RRESP(m00_axi_rresp),
		.M_AXI_RLAST(m00_axi_rlast),
		.M_AXI_RUSER(m00_axi_ruser),
		.M_AXI_RVALID(m00_axi_rvalid),
		.M_AXI_RREADY(m00_axi_rready)
	);

	// Add user logic here
	reg[2:0] cur, next;
	
	always @(posedge m00_axi_aclk) begin
		cur=next;
	end
	
	always @(*) begin
		case(cur)
			t_0: begin
				if(m00_axi_init_axi_txn) next=t_1;
				else next=t_0;
			end
			t_1: begin
				next=t_2;
			end
			t_2: begin
				if(m00_axi_awready) begin
					if(m00_axi_wready) next=t_4;
					else next=t_3;
				end
				else next=t_2;
			end
			t_3: begin
				if(m00_axi_wready) next=t_4;
				else next=t_3;
			end
			t_4: begin
				if(m00_axi_awready) begin
					if(m00_axi_wready) next=t_6;
					else next=t_5;
				end
				else next=t_4;
			end
			t_5:  begin
				if(m00_axi_wready) next=t_6;
				else next=t_5;
			end
			t_6: begin
				next=t_6;
			end
		default next=t_0;
		endcase
	end
	
	always @(*) begin
		case(cur)
			t_1: begin
				m00_axi_awlen=8'b00000000;
				m00_axi_awsize=3'b100;
				m00_axi_awburst=2'b00;
				m00_axi_awlock=2'b00;
				m00_axi_awcache=4'b0001;
				m00_axi_awprot=3'b000;
				m00_axi_awqos=4'b0001;
				m00_axi_wstrb=4'b1111;
				m00_axi_awvalid=1'b0;
				m00_axi_wvalid=1'b0;
				m00_axi_arvalid=1'b0;
				m00_axi_bready=1'b1;
				m00_axi_rready=1'b1;
			end
			t_2: begin
				m00_axi_awid=4'b0000;
				m00_axi_awaddr=32'he000a204;
				m00_axi_wid=4'b0000;
				m00_axi_wdata=32'h0000fe01;
				m00_axi_wlast=1'b1;
				m00_axi_awvalid=1'b1;
				m00_axi_wvalid=1'b1;
			end
			t_3: begin
				m00_axi_wid=4'b0000;
				m00_axi_wdata=32'h0000fe01;
				m00_axi_wlast=1'b1;
				m00_axi_wvalid=1'b1;
			end
			t_4: begin
				m00_axi_awid=4'b0001;
				m00_axi_awaddr=32'he000a208;
				m00_axi_wid=4'b0001;
				m00_axi_wdata=32'h0000fe01;
				m00_axi_wlast=1'b1;
				m00_axi_awvalid=1'b1;
				m00_axi_wvalid=1'b1;
			end
			t_5: begin
				m00_axi_awid=4'b0001;
				m00_axi_wdata=32'h0000fe01;
				m00_axi_wlast=1'b1;
				m00_axi_wvalid=1'b1;
			end
			t_6: begin
				m00_axi_awid=4'b0010;
				m00_axi_awaddr=32'he000a040;
				m00_axi_wid=4'b0010;
				m00_axi_wdata=32'h00000001;
				m00_axi_wlast=1'b1;
				m00_axi_awvalid=1'b1;
				m00_axi_wvalid=1'b1;
			end
		endcase
	end
	// User logic ends

	endmodule

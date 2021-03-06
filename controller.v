module controller(
		m00_axi_init_axi_txn,
		m00_axi_aclk,
		m00_axi_awid,
		m00_axi_awaddr,
		m00_axi_awlen,
		m00_axi_awsize,
		m00_axi_awburst,
		m00_axi_awlock,
		m00_axi_awcache,
		m00_axi_awprot,
		m00_axi_awqos,
		m00_axi_awvalid,
		m00_axi_awready,
		m00_axi_wdata,
		m00_axi_wstrb,
		m00_axi_wlast,
		m00_axi_wvalid,
		m00_axi_wready,
		m00_axi_bid
	);

	input m00_axi_init_axi_txn;
	input m00_axi_aclk;
	output reg [3 : 0] m00_axi_awid;
	output reg [31 : 0] m00_axi_awaddr;
	output reg [7 : 0] m00_axi_awlen;
	output reg [2 : 0] m00_axi_awsize;
	output reg [1 : 0] m00_axi_awburst;
	output reg  m00_axi_awlock;
	output reg [3 : 0] m00_axi_awcache;
	output reg [2 : 0] m00_axi_awprot;
	output reg [3 : 0] m00_axi_awqos;
	output reg  m00_axi_awvalid;
	input m00_axi_awready;
	output reg [31 : 0] m00_axi_wdata;
	output reg [3 : 0] m00_axi_wstrb;
	output reg  m00_axi_wlast;
	output reg  m00_axi_wvalid;
	input m00_axi_wready;
	input [3 : 0] m00_axi_bid;

	parameter t_0=3'b000; 
	parameter t_1=3'b001; 
	parameter t_2=3'b010;
	parameter t_3=3'b011; 
	parameter t_4=3'b100; 
	parameter t_5=3'b101; 
	parameter t_6=3'b110;	
	
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
				next<=t_6;
			end
		default next<=t_0;
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
			end
			t_2: begin
				m00_axi_awid=4'b0000;
				m00_axi_awaddr=32'he000a204;
				//m00_axi_wid=4'b0000;
				m00_axi_wdata=32'h0000fe01;
				m00_axi_wlast=1'b1;
				m00_axi_awvalid=1'b1;
				m00_axi_wvalid=1'b1;
			end
			t_3: begin
				//m00_axi_wid=4'b0000;
				m00_axi_wdata=32'h0000fe01;
				m00_axi_wlast=1'b1;
				m00_axi_wvalid=1'b1;
			end
			t_4: begin
				m00_axi_awid=4'b0001;
				m00_axi_awaddr=32'he000a208;
				//m00_axi_wid=4'b0001;
				m00_axi_wdata=32'h0000fe01;
				m00_axi_wlast=1'b1;
				m00_axi_awvalid=1'b1;
				m00_axi_wvalid=1'b1;
			end
			t_5: begin
				//m00_axi_wid=4'b0001;
				m00_axi_wdata=32'h0000fe01;
				m00_axi_wlast=1'b1;
				m00_axi_wvalid=1'b1;
			end
			t_6: begin
				m00_axi_awid=4'b0010;
				m00_axi_awaddr=32'he000a040;
				//m00_axi_wid=4'b0010;
				m00_axi_wdata=32'h00000001;
				m00_axi_wlast=1'b1;
				m00_axi_awvalid=1'b1;
				m00_axi_wvalid=1'b1;
			end
		endcase
	end
endmodule

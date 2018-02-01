axi: axi_controller_tb.v axi_controller_v1_1.v axi_controller_v1_1_M00_AXI.v controller.v
	iverilog axi_controller_tb.v axi_controller_v1_1.v axi_controller_v1_1_M00_AXI.v -o axi.vvp controller.v
	vvp axi.vvp

wave: axi_tb.vcd
	gtkwave axi_tb.vcd
	
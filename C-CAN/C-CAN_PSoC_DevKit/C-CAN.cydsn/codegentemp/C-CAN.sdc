# THIS FILE IS AUTOMATICALLY GENERATED
# Project: C:\Users\Patrick\Documents\GitHub\UNCAMotorsports-2017\C-CAN\C-CAN_PSoC_DevKit\C-CAN.cydsn\C-CAN.cyprj
# Date: Mon, 11 Sep 2017 21:01:50 GMT
#set_units -time ns
create_clock -name {Clock_4(routed)} -period 55.555555555555543 -waveform {0 27.7777777777778} [list [get_pins {ClockBlock/dclk_0}]]
create_clock -name {CyXTAL} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/xtal}]]
create_clock -name {CyILO} -period 10000 -waveform {0 5000} [list [get_pins {ClockBlock/ilo}] [get_pins {ClockBlock/clk_100k}] [get_pins {ClockBlock/clk_1k}] [get_pins {ClockBlock/clk_32k}]]
create_clock -name {CyIMO} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/imo}]]
create_clock -name {CyPLL_OUT} -period 13.888888888888886 -waveform {0 6.94444444444444} [list [get_pins {ClockBlock/pllout}]]
create_clock -name {CyMASTER_CLK} -period 13.888888888888886 -waveform {0 6.94444444444444} [list [get_pins {ClockBlock/clk_sync}]]
create_generated_clock -name {CyBUS_CLK} -source [get_pins {ClockBlock/clk_sync}] -edges {1 2 3} [list [get_pins {ClockBlock/clk_bus_glb}]]
create_clock -name {CyBUS_CLK(fixed-function)} -period 13.888888888888886 -waveform {0 6.94444444444444} [get_pins {ClockBlock/clk_bus_glb_ff}]
create_generated_clock -name {Clock_4} -source [get_pins {ClockBlock/clk_sync}] -edges {1 5 9} [list [get_pins {ClockBlock/dclk_glb_0}]]


# Component constraints for C:\Users\Patrick\Documents\GitHub\UNCAMotorsports-2017\C-CAN\C-CAN_PSoC_DevKit\C-CAN.cydsn\TopDesign\TopDesign.cysch
# Project: C:\Users\Patrick\Documents\GitHub\UNCAMotorsports-2017\C-CAN\C-CAN_PSoC_DevKit\C-CAN.cydsn\C-CAN.cyprj
# Date: Mon, 11 Sep 2017 21:01:38 GMT

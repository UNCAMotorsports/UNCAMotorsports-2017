// ======================================================================
// C-CAN.v generated from TopDesign.cysch
// 09/11/2017 at 17:01
// This file is auto generated. ANY EDITS YOU MAKE MAY BE LOST WHEN THIS FILE IS REGENERATED!!!
// ======================================================================

/* -- WARNING: The following section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_DIE_LEOPARD 1
`define CYDEV_CHIP_REV_LEOPARD_PRODUCTION 3
`define CYDEV_CHIP_REV_LEOPARD_ES3 3
`define CYDEV_CHIP_REV_LEOPARD_ES2 1
`define CYDEV_CHIP_REV_LEOPARD_ES1 0
`define CYDEV_CHIP_DIE_TMA4 2
`define CYDEV_CHIP_REV_TMA4_PRODUCTION 17
`define CYDEV_CHIP_REV_TMA4_ES 17
`define CYDEV_CHIP_REV_TMA4_ES2 33
`define CYDEV_CHIP_DIE_PSOC4A 3
`define CYDEV_CHIP_REV_PSOC4A_PRODUCTION 17
`define CYDEV_CHIP_REV_PSOC4A_ES0 17
`define CYDEV_CHIP_DIE_PSOC5LP 4
`define CYDEV_CHIP_REV_PSOC5LP_PRODUCTION 0
`define CYDEV_CHIP_REV_PSOC5LP_ES0 0
`define CYDEV_CHIP_DIE_PSOC5TM 5
`define CYDEV_CHIP_REV_PSOC5TM_PRODUCTION 1
`define CYDEV_CHIP_REV_PSOC5TM_ES1 1
`define CYDEV_CHIP_REV_PSOC5TM_ES0 0
`define CYDEV_CHIP_DIE_VOLANS 6
`define CYDEV_CHIP_REV_VOLANS_PRODUCTION 0
`define CYDEV_CHIP_DIE_BERRYPECKER 7
`define CYDEV_CHIP_REV_BERRYPECKER_PRODUCTION 0
`define CYDEV_CHIP_DIE_CRANE 8
`define CYDEV_CHIP_REV_CRANE_PRODUCTION 0
`define CYDEV_CHIP_DIE_FM3 9
`define CYDEV_CHIP_REV_FM3_PRODUCTION 0
`define CYDEV_CHIP_DIE_FM4 10
`define CYDEV_CHIP_REV_FM4_PRODUCTION 0
`define CYDEV_CHIP_DIE_EXPECT 4
`define CYDEV_CHIP_REV_EXPECT 0
`define CYDEV_CHIP_DIE_ACTUAL 4
/* -- WARNING: The previous section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_FAMILY_PSOC3 1
`define CYDEV_CHIP_FAMILY_PSOC4 2
`define CYDEV_CHIP_FAMILY_PSOC5 3
`define CYDEV_CHIP_FAMILY_FM0P 4
`define CYDEV_CHIP_FAMILY_FM3 5
`define CYDEV_CHIP_FAMILY_FM4 6
`define CYDEV_CHIP_FAMILY_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_3A 1
`define CYDEV_CHIP_REVISION_3A_PRODUCTION 3
`define CYDEV_CHIP_REVISION_3A_ES3 3
`define CYDEV_CHIP_REVISION_3A_ES2 1
`define CYDEV_CHIP_REVISION_3A_ES1 0
`define CYDEV_CHIP_MEMBER_4G 2
`define CYDEV_CHIP_REVISION_4G_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4G_ES 17
`define CYDEV_CHIP_REVISION_4G_ES2 33
`define CYDEV_CHIP_MEMBER_4U 3
`define CYDEV_CHIP_REVISION_4U_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4E 4
`define CYDEV_CHIP_REVISION_4E_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4O 5
`define CYDEV_CHIP_REVISION_4O_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4N 6
`define CYDEV_CHIP_REVISION_4N_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Q 7
`define CYDEV_CHIP_REVISION_4Q_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4D 8
`define CYDEV_CHIP_REVISION_4D_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4J 9
`define CYDEV_CHIP_REVISION_4J_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4K 10
`define CYDEV_CHIP_REVISION_4K_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4H 11
`define CYDEV_CHIP_REVISION_4H_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4A 12
`define CYDEV_CHIP_REVISION_4A_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4A_ES0 17
`define CYDEV_CHIP_MEMBER_4F 13
`define CYDEV_CHIP_REVISION_4F_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0
`define CYDEV_CHIP_MEMBER_4P 14
`define CYDEV_CHIP_REVISION_4P_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4M 15
`define CYDEV_CHIP_REVISION_4M_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4L 16
`define CYDEV_CHIP_REVISION_4L_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4I 17
`define CYDEV_CHIP_REVISION_4I_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4C 18
`define CYDEV_CHIP_REVISION_4C_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_5B 19
`define CYDEV_CHIP_REVISION_5B_PRODUCTION 0
`define CYDEV_CHIP_REVISION_5B_ES0 0
`define CYDEV_CHIP_MEMBER_5A 20
`define CYDEV_CHIP_REVISION_5A_PRODUCTION 1
`define CYDEV_CHIP_REVISION_5A_ES1 1
`define CYDEV_CHIP_REVISION_5A_ES0 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE1 21
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE1_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE2 22
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE2_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE3 23
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM3 24
`define CYDEV_CHIP_REVISION_FM3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM4 25
`define CYDEV_CHIP_REVISION_FM4_PRODUCTION 0
`define CYDEV_CHIP_FAMILY_USED 3
`define CYDEV_CHIP_MEMBER_USED 19
`define CYDEV_CHIP_REVISION_USED 0
// Component: or_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0\or_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0\or_v1_0.v"
`endif

// Component: ZeroTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`endif

// CAN_v3_0(AckError=false, AckErrorUseHelper=true, AdvancedInterruptConfig=false, APIDictionary=0, Arbiter=1, ArbLost=false, ArbLostUseHelper=true, BaudRate=1000, BitError=false, BitErrorUseHelper=true, Bitrate=3, BussOff=false, BussOffUseHelper=true, ClkFrequency=72, ConnectExtInterruptLine=false, ConnectTxEn=false, CrcError=false, CrcErrorUseHelper=true, DataGridSaved=0, EdgeMode=0, FormError=false, FormErrorUseHelper=true, FullCustomIntISR=false, IntEnable=true, IntISRDisable=false, M0S8CAN_BLOCK_VER=-1, Overload=false, OverloadUseHelper=true, Reset=0, RTRAutomaticReply=false, RTRAutomaticReplyUseHelper=true, RxMsg=true, RxMsgLost=false, RxMsgLostUseHelper=true, RxMsgUseHelper=true, Sjw=3, Sm=1, SSTError=false, SSTErrorUseHelper=true, StuckAtZero=false, StuckAtZeroUseHelper=true, StuffError=false, StuffErrorUseHelper=true, SwapDataByteEndianness=false, Tseg1=14, Tseg2=3, TxMsg=false, TxMsgUseHelper=true, XMLMainData=<?xml version="1.0" encoding="utf-16"?><CyParameters xmlns:version="v1.50"><TXRegUnits><CyRegUnit Type="etTX" Name="0" State="esBasic" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etTX" Name="1" State="esBasic" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etTX" Name="2" State="esBasic" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etTX" Name="3" State="esBasic" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etTX" Name="4" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etTX" Name="5" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etTX" Name="6" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etTX" Name="7" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /></TXRegUnits><RXRegUnits><CyRegUnit Type="etRX" Name="Start" State="esFull" Id="70" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="true" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="Mode" State="esFull" Id="71" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="true" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="ID" State="esFull" Id="72" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="true" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="Name" State="esFull" Id="73" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="true" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="Status" State="esFull" Id="74" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="GetConfig" State="esFull" Id="75" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="true" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="UpdateConfig" State="esFull" Id="76" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="true" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="SoftReset" State="esFull" Id="77" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="true" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="Halt" State="esFull" Id="78" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="true" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="9" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="10" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="11" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="12" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="13" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="14" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="15" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /></RXRegUnits></CyParameters>, CY_API_CALLBACK_HEADER_INCLUDE=, CY_COMPONENT_NAME=CAN_v3_0, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=CAN_1, CY_INSTANCE_SHORT_NAME=CAN_1, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.0 Update 1, INSTANCE_NAME=CAN_1, )
module CAN_v3_0_0 (
    rx,
    tx,
    tx_en,
    interrupt);
    input       rx;
    output      tx;
    output      tx_en;
    output      interrupt;


          wire  Net_31;
          wire  Net_30;
          wire  Net_27;
          wire  Net_25;


	cy_clock_v1_0
		#(.id("2c366327-8ea9-4813-ab0d-a7ce473af76e/ccbbccde-4db5-4009-af85-8e8bae589faa"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		Clock
		 (.clock_out(Net_25));


    cy_psoc3_can_v1_0 CanIP (
        .clock(Net_25),
        .can_rx(rx),
        .can_tx(tx),
        .can_tx_en(tx_en),
        .interrupt(interrupt));


	cy_isr_v1_0
		#(.int_type(2'b10))
		isr
		 (.int_signal(interrupt));



    assign Net_31 = Net_30 | Net_25;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_30));



endmodule

// Component: AMuxHw_v1_50
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\AMuxHw_v1_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\AMuxHw_v1_50\AMuxHw_v1_50.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\AMuxHw_v1_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\AMuxHw_v1_50\AMuxHw_v1_50.v"
`endif

// Component: cy_analog_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`endif

// Component: cy_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`endif

// Component: cy_vref_v1_60
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_vref_v1_60"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_vref_v1_60\cy_vref_v1_60.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_vref_v1_60"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_vref_v1_60\cy_vref_v1_60.v"
`endif

// Component: cy_constant_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`endif

// ADC_SAR_v3_0(ADC_Clock=0, ADC_Clock_Frequency=18000000, ADC_Input_Range=1, ADC_Power=0, ADC_Reference=1, ADC_Resolution=12, ADC_SampleMode=0, Enable_next_out=true, Ref_Voltage=2.5, Ref_Voltage_mV=2500, rm_int=false, Sample_Precharge=6, Sample_Rate=1000000, Sample_Rate_def=631579, CY_API_CALLBACK_HEADER_INCLUDE=, CY_COMPONENT_NAME=ADC_SAR_v3_0, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=ADC_SAR_1, CY_INSTANCE_SHORT_NAME=ADC_SAR_1, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.0 Update 1, INSTANCE_NAME=ADC_SAR_1, )
module ADC_SAR_v3_0_1 (
    vplus,
    vminus,
    soc,
    eoc,
    aclk,
    vdac_ref,
    eos);
    inout       vplus;
    electrical  vplus;
    inout       vminus;
    electrical  vminus;
    input       soc;
    output      eoc;
    input       aclk;
    inout       vdac_ref;
    electrical  vdac_ref;
    output      eos;


          wire [3:0] vp_ctl;
          wire [3:0] vn_ctl;
          wire  Net_381;
    electrical  Net_255;
    electrical  Net_267;
    electrical  Net_210;
    electrical  Net_209;
          wire [11:0] Net_207;
          wire  Net_252;
          wire  Net_205;
          wire  Net_378;
          wire  Net_376;
    electrical  Net_368;
    electrical  Net_235;
    electrical  Net_216;
    electrical  Net_233;
          wire  Net_221;
    electrical  Net_248;
    electrical  Net_257;
    electrical  Net_149;
    electrical  Net_126;
    electrical  Net_215;
          wire  Net_188;

	// cy_analog_virtualmux_3 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_3_connect(Net_248, Net_235);
	defparam cy_analog_virtualmux_3_connect.sig_width = 1;


	cy_isr_v1_0
		#(.int_type(2'b10))
		IRQ
		 (.int_signal(eoc));


    ZeroTerminal ZeroTerminal_1 (
        .z(vp_ctl[0]));

    ZeroTerminal ZeroTerminal_2 (
        .z(vp_ctl[2]));

    ZeroTerminal ZeroTerminal_3 (
        .z(vn_ctl[1]));

    ZeroTerminal ZeroTerminal_4 (
        .z(vn_ctl[3]));

    ZeroTerminal ZeroTerminal_5 (
        .z(vp_ctl[1]));

    ZeroTerminal ZeroTerminal_6 (
        .z(vp_ctl[3]));

    ZeroTerminal ZeroTerminal_7 (
        .z(vn_ctl[0]));

    ZeroTerminal ZeroTerminal_8 (
        .z(vn_ctl[2]));

	// Clock_VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_188 = aclk;

    cy_psoc5_sar_v2_0 ADC_SAR (
        .clock(Net_188),
        .sof_udb(soc),
        .clk_udb(),
        .vp_ctl_udb(vp_ctl[3:0]),
        .vn_ctl_udb(vn_ctl[3:0]),
        .vplus(vplus),
        .vminus(Net_126),
        .irq(Net_252),
        .data_out(Net_207[11:0]),
        .eof_udb(eoc),
        .pump_clock(Net_188),
        .ext_pin(Net_215),
        .vrefhi_out(Net_257),
        .vref(Net_248),
        .next_out(eos));

	// cy_analog_virtualmux_2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_2_connect(Net_215, Net_210);
	defparam cy_analog_virtualmux_2_connect.sig_width = 1;

	wire [0:0] tmpOE__Bypass_net;
	wire [0:0] tmpFB_0__Bypass_net;
	wire [0:0] tmpIO_0__Bypass_net;
	wire [0:0] tmpINTERRUPT_0__Bypass_net;
	electrical [0:0] tmpSIOVREF__Bypass_net;

	cy_psoc3_pins_v1_10
		#(.id("8fbc7237-5877-481a-89b5-425e8138e74b/16a808f6-2e13-45b9-bce0-b001c8655113"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .use_annotation(1'b0),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b0),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .vtrip(2'b10),
		  .width(1))
		Bypass
		 (.oe(tmpOE__Bypass_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Bypass_net[0:0]}),
		  .analog({Net_210}),
		  .io({tmpIO_0__Bypass_net[0:0]}),
		  .siovref(tmpSIOVREF__Bypass_net),
		  .interrupt({tmpINTERRUPT_0__Bypass_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Bypass_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	// cy_analog_virtualmux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_1_connect(Net_126, Net_149);
	defparam cy_analog_virtualmux_1_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 noconnect (
        .noconnect(Net_209));

	// cy_analog_virtualmux_4 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_4_connect(Net_257, Net_149);
	defparam cy_analog_virtualmux_4_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_255));


	cy_vref_v1_0
		#(.autoenable(1),
		  .guid("4720866E-BC14-478d-B8A0-3E44F38CADAC"),
		  .name("Vdda/2"))
		vRef_Vdda_1
		 (.vout(Net_235));


    cy_analog_noconnect_v1_0 noconnect_1 (
        .noconnect(Net_368));


    assign Net_221 = Net_381 | Net_376;

    assign Net_381 = 1'h0;



endmodule

// Component: BasicCounter_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\BasicCounter_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\BasicCounter_v1_0\BasicCounter_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\BasicCounter_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\BasicCounter_v1_0\BasicCounter_v1_0.v"
`endif

// Component: CyControlReg_v1_80
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyControlReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyControlReg_v1_80\CyControlReg_v1_80.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyControlReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyControlReg_v1_80\CyControlReg_v1_80.v"
`endif

// top
module top ;

          wire  Net_1662;
          wire  Net_1661;
          wire  Net_1660;
          wire  Net_1659;
          wire  Net_1658;
          wire  Net_1657;
          wire  Net_1656;
          wire  Net_1655;
          wire  Net_1654;
          wire  Net_1653;
          wire  Net_1545;
          wire  Net_1535;
          wire  Net_1534;
    electrical  Net_1525;
          wire  Net_1522;
    electrical  Net_1521;
          wire  Net_836;
          wire  Net_835;
          wire  Net_12;
          wire  Net_11;
    electrical  Net_1610;
    electrical  Net_1612;
    electrical  Net_1557;
    electrical  Net_1611;
          wire  Net_1539;
          wire  Net_1541;
          wire  Net_1524;
          wire [1:0] Net_1536;
    electrical  Net_771;
          wire  Net_1542;
          wire  Net_1533;

	wire [0:0] tmpOE__three_net;
	wire [0:0] tmpFB_0__three_net;
	wire [0:0] tmpIO_0__three_net;
	wire [0:0] tmpINTERRUPT_0__three_net;
	electrical [0:0] tmpSIOVREF__three_net;

	cy_psoc3_pins_v1_10
		#(.id("45c1bc09-caa4-4a52-bb11-b110ee65c0ef"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("NONCONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(1),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		three
		 (.oe(tmpOE__three_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__three_net[0:0]}),
		  .analog({Net_1611}),
		  .io({tmpIO_0__three_net[0:0]}),
		  .siovref(tmpSIOVREF__three_net),
		  .interrupt({tmpINTERRUPT_0__three_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__three_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__one_net;
	wire [0:0] tmpFB_0__one_net;
	wire [0:0] tmpIO_0__one_net;
	wire [0:0] tmpINTERRUPT_0__one_net;
	electrical [0:0] tmpSIOVREF__one_net;

	cy_psoc3_pins_v1_10
		#(.id("4a6d0cee-4407-43d9-8e2b-25e45eab6e4f"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("NONCONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(1),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		one
		 (.oe(tmpOE__one_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__one_net[0:0]}),
		  .analog({Net_1557}),
		  .io({tmpIO_0__one_net[0:0]}),
		  .siovref(tmpSIOVREF__one_net),
		  .interrupt({tmpINTERRUPT_0__one_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__one_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__four_net;
	wire [0:0] tmpFB_0__four_net;
	wire [0:0] tmpIO_0__four_net;
	wire [0:0] tmpINTERRUPT_0__four_net;
	electrical [0:0] tmpSIOVREF__four_net;

	cy_psoc3_pins_v1_10
		#(.id("51d8eda8-1d64-474a-97f6-b2a7b3d0fd37"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("NONCONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(1),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		four
		 (.oe(tmpOE__four_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__four_net[0:0]}),
		  .analog({Net_1612}),
		  .io({tmpIO_0__four_net[0:0]}),
		  .siovref(tmpSIOVREF__four_net),
		  .interrupt({tmpINTERRUPT_0__four_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__four_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__two_net;
	wire [0:0] tmpFB_0__two_net;
	wire [0:0] tmpIO_0__two_net;
	wire [0:0] tmpINTERRUPT_0__two_net;
	electrical [0:0] tmpSIOVREF__two_net;

	cy_psoc3_pins_v1_10
		#(.id("0e74077e-3f77-48e5-a6e0-dc63da776cdd"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("NONCONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(1),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		two
		 (.oe(tmpOE__two_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__two_net[0:0]}),
		  .analog({Net_1610}),
		  .io({tmpIO_0__two_net[0:0]}),
		  .siovref(tmpSIOVREF__two_net),
		  .interrupt({tmpINTERRUPT_0__two_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__two_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__RX_2_net;
	wire [0:0] tmpIO_0__RX_2_net;
	wire [0:0] tmpINTERRUPT_0__RX_2_net;
	electrical [0:0] tmpSIOVREF__RX_2_net;

	cy_psoc3_pins_v1_10
		#(.id("6995b1d6-3d1b-402c-be9a-1540701bf309"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		RX_2
		 (.oe(tmpOE__RX_2_net),
		  .y({1'b0}),
		  .fb({Net_11}),
		  .io({tmpIO_0__RX_2_net[0:0]}),
		  .siovref(tmpSIOVREF__RX_2_net),
		  .interrupt({tmpINTERRUPT_0__RX_2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__RX_2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__TX_2_net;
	wire [0:0] tmpFB_0__TX_2_net;
	wire [0:0] tmpIO_0__TX_2_net;
	wire [0:0] tmpINTERRUPT_0__TX_2_net;
	electrical [0:0] tmpSIOVREF__TX_2_net;

	cy_psoc3_pins_v1_10
		#(.id("5da2ee05-b995-4eb7-92e3-cece4070ab85"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		TX_2
		 (.oe(tmpOE__TX_2_net),
		  .y({Net_12}),
		  .fb({tmpFB_0__TX_2_net[0:0]}),
		  .io({tmpIO_0__TX_2_net[0:0]}),
		  .siovref(tmpSIOVREF__TX_2_net),
		  .interrupt({tmpINTERRUPT_0__TX_2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__TX_2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    CAN_v3_0_0 CAN_1 (
        .rx(Net_11),
        .tx(Net_12),
        .tx_en(Net_835),
        .interrupt(Net_836));

    // -- AMuxHw AMux_1 start -- ***
    
    // -- AMuxHw Decoder Start--
    
    reg [3:0] AMux_1_Decoder_one_hot;
    reg [1:0] AMux_1_Decoder_old_id;
    wire  AMux_1_Decoder_is_active;
    wire  AMux_1_Decoder_enable;
    
    assign AMux_1_Decoder_enable = 1'b1;
    
    genvar AMux_1_Decoder_i;
    
    assign AMux_1_Decoder_is_active = (Net_1536[1:0] == AMux_1_Decoder_old_id) && AMux_1_Decoder_enable;
    
    always @(posedge Net_1524)
    begin
        AMux_1_Decoder_old_id = Net_1536[1:0];
    end
    
    generate
        for (AMux_1_Decoder_i = 0; AMux_1_Decoder_i < 4; AMux_1_Decoder_i = AMux_1_Decoder_i + 1 )
        begin : AMux_1_OutBit
            always @(posedge Net_1524)
            begin
                AMux_1_Decoder_one_hot[AMux_1_Decoder_i] <= (AMux_1_Decoder_old_id == AMux_1_Decoder_i) && AMux_1_Decoder_is_active;
            end
        end
    endgenerate
    
    // -- AMuxHw Decoder End--
    
    // -- AMuxHw Primitive A --
    
    cy_psoc3_amux_v1_0 #(
        .muxin_width(4),
        .hw_control(1),
        .one_active(1),
        .init_mux_sel(4'h0),
        .api_type(2'b10))
        AMux_1(
        .muxin({
            Net_1612,
            Net_1611,
            Net_1610,
            Net_1557
            }),
        .hw_ctrl_en(AMux_1_Decoder_one_hot[3:0]),
        .vout(Net_771)
        );
    
    // -- AMuxHw AMux_1 end -- ***

    ADC_SAR_v3_0_1 ADC_SAR_1 (
        .vplus(Net_771),
        .vminus(Net_1521),
        .soc(1'b0),
        .eoc(Net_1533),
        .aclk(Net_1524),
        .vdac_ref(Net_1525),
        .eos(Net_1542));

    BasicCounter_v1_0 BasicCounter (
        .en(Net_1541),
        .cnt(Net_1536[1:0]),
        .reset(Net_1539),
        .clock(Net_1542));
    defparam BasicCounter.Width = 2;

    assign Net_1541 = 1'h1;

    assign Net_1539 = 1'h0;


	cy_dma_v1_0
		#(.drq_type(2'b10))
		DMA_1
		 (.drq(Net_1533),
		  .trq(1'b0),
		  .nrq(Net_1535));



	cy_clock_v1_0
		#(.id("8a264757-46c5-4087-a731-d3638179e7ea"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("55555555.5555556"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_4
		 (.clock_out(Net_1524));


    CyControlReg_v1_80 Port_for_fun (
        .control_1(Net_1653),
        .control_2(Net_1654),
        .control_3(Net_1655),
        .control_0(Net_1656),
        .control_4(Net_1657),
        .control_5(Net_1658),
        .control_6(Net_1659),
        .control_7(Net_1660),
        .clock(1'b0),
        .reset(1'b0));
    defparam Port_for_fun.Bit0Mode = 0;
    defparam Port_for_fun.Bit1Mode = 0;
    defparam Port_for_fun.Bit2Mode = 0;
    defparam Port_for_fun.Bit3Mode = 0;
    defparam Port_for_fun.Bit4Mode = 0;
    defparam Port_for_fun.Bit5Mode = 0;
    defparam Port_for_fun.Bit6Mode = 0;
    defparam Port_for_fun.Bit7Mode = 0;
    defparam Port_for_fun.BitValue = 0;
    defparam Port_for_fun.BusDisplay = 0;
    defparam Port_for_fun.ExtrReset = 0;
    defparam Port_for_fun.NumOutputs = 8;



endmodule


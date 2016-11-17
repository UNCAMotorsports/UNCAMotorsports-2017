// ======================================================================
// Bootloader.v generated from TopDesign.cysch
// 10/27/2016 at 01:11
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

// USBFS_v3_10(AudioDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="Audio">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, CDCDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="CDC">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, DeviceDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="Device">\r\n      <Nodes>\r\n        <DescriptorNode Key="USBDescriptor149">\r\n          <m_value d6p1:type="DeviceDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>DEVICE</bDescriptorType>\r\n            <bLength>18</bLength>\r\n            <iwManufacturer>147</iwManufacturer>\r\n            <iwProduct>148</iwProduct>\r\n            <sManufacturer>Cypress Semiconductor</sManufacturer>\r\n            <sProduct>PSoC3 Bootloader</sProduct>\r\n            <sSerialNumber>0001</sSerialNumber>\r\n            <bDeviceClass>0</bDeviceClass>\r\n            <bDeviceSubClass>0</bDeviceSubClass>\r\n            <bDeviceProtocol>0</bDeviceProtocol>\r\n            <bMaxPacketSize0>0</bMaxPacketSize0>\r\n            <idVendor>1204</idVendor>\r\n            <idProduct>46877</idProduct>\r\n            <bcdDevice>12289</bcdDevice>\r\n            <bcdUSB>512</bcdUSB>\r\n            <iManufacturer>1</iManufacturer>\r\n            <iProduct>2</iProduct>\r\n            <iSerialNumber>0</iSerialNumber>\r\n            <bNumConfigurations>1</bNumConfigurations>\r\n            <bMemoryMgmt>0</bMemoryMgmt>\r\n            <bMemoryAlloc>0</bMemoryAlloc>\r\n          </m_value>\r\n          <Value d6p1:type="DeviceDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>DEVICE</bDescriptorType>\r\n            <bLength>18</bLength>\r\n            <iwManufacturer>147</iwManufacturer>\r\n            <iwProduct>148</iwProduct>\r\n            <sManufacturer>Cypress Semiconductor</sManufacturer>\r\n            <sProduct>PSoC3 Bootloader</sProduct>\r\n            <sSerialNumber>0001</sSerialNumber>\r\n            <bDeviceClass>0</bDeviceClass>\r\n            <bDeviceSubClass>0</bDeviceSubClass>\r\n            <bDeviceProtocol>0</bDeviceProtocol>\r\n            <bMaxPacketSize0>0</bMaxPacketSize0>\r\n            <idVendor>1204</idVendor>\r\n            <idProduct>46877</idProduct>\r\n            <bcdDevice>12289</bcdDevice>\r\n            <bcdUSB>512</bcdUSB>\r\n            <iManufacturer>1</iManufacturer>\r\n            <iProduct>2</iProduct>\r\n            <iSerialNumber>0</iSerialNumber>\r\n            <bNumConfigurations>1</bNumConfigurations>\r\n            <bMemoryMgmt>0</bMemoryMgmt>\r\n            <bMemoryAlloc>0</bMemoryAlloc>\r\n          </Value>\r\n          <Nodes>\r\n            <DescriptorNode Key="USBDescriptor154">\r\n              <m_value d8p1:type="ConfigDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>CONFIGURATION</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwConfiguration>0</iwConfiguration>\r\n                <wTotalLength>41</wTotalLength>\r\n                <bNumInterfaces>1</bNumInterfaces>\r\n                <bConfigurationValue>0</bConfigurationValue>\r\n                <iConfiguration>0</iConfiguration>\r\n                <bmAttributes>128</bmAttributes>\r\n                <bMaxPower>50</bMaxPower>\r\n              </m_value>\r\n              <Value d8p1:type="ConfigDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>CONFIGURATION</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwConfiguration>0</iwConfiguration>\r\n                <wTotalLength>41</wTotalLength>\r\n                <bNumInterfaces>1</bNumInterfaces>\r\n                <bConfigurationValue>0</bConfigurationValue>\r\n                <iConfiguration>0</iConfiguration>\r\n                <bmAttributes>128</bmAttributes>\r\n                <bMaxPower>50</bMaxPower>\r\n              </Value>\r\n              <Nodes>\r\n                <DescriptorNode Key="Interface158">\r\n                  <m_value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName />\r\n                  </m_value>\r\n                  <Value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName />\r\n                  </Value>\r\n                  <Nodes>\r\n                    <DescriptorNode Key="USBDescriptor159">\r\n                      <m_value d12p1:type="InterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>148</iwInterface>\r\n                        <bInterfaceClass>3</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>0</bInterfaceNumber>\r\n                        <bNumEndpoints>2</bNumEndpoints>\r\n                        <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                        <iInterface>2</iInterface>\r\n                        <sInterface>PSoC3 Bootloader</sInterface>\r\n                      </m_value>\r\n                      <Value d12p1:type="InterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>148</iwInterface>\r\n                        <bInterfaceClass>3</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>0</bInterfaceNumber>\r\n                        <bNumEndpoints>2</bNumEndpoints>\r\n                        <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                        <iInterface>2</iInterface>\r\n                        <sInterface>PSoC3 Bootloader</sInterface>\r\n                      </Value>\r\n                      <Nodes>\r\n                        <DescriptorNode Key="USBDescriptor161">\r\n                          <m_value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bInterval>1</bInterval>\r\n                            <bEndpointAddress>1</bEndpointAddress>\r\n                            <bmAttributes>3</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </m_value>\r\n                          <Value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bInterval>1</bInterval>\r\n                            <bEndpointAddress>1</bEndpointAddress>\r\n                            <bmAttributes>3</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor162">\r\n                          <m_value d14p1:type="HIDDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>HID</bDescriptorType>\r\n                            <bLength>9</bLength>\r\n                            <bReportIndex>1</bReportIndex>\r\n                            <wReportIndex>126</wReportIndex>\r\n                            <bcdHID>0</bcdHID>\r\n                            <bCountryCode>0</bCountryCode>\r\n                            <bNumDescriptors>1</bNumDescriptors>\r\n                            <bDescriptorType1>34</bDescriptorType1>\r\n                            <wDescriptorLength>36</wDescriptorLength>\r\n                          </m_value>\r\n                          <Value d14p1:type="HIDDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>HID</bDescriptorType>\r\n                            <bLength>9</bLength>\r\n                            <bReportIndex>1</bReportIndex>\r\n                            <wReportIndex>126</wReportIndex>\r\n                            <bcdHID>0</bcdHID>\r\n                            <bCountryCode>0</bCountryCode>\r\n                            <bNumDescriptors>1</bNumDescriptors>\r\n                            <bDescriptorType1>34</bDescriptorType1>\r\n                            <wDescriptorLength>36</wDescriptorLength>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor163">\r\n                          <m_value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bInterval>1</bInterval>\r\n                            <bEndpointAddress>130</bEndpointAddress>\r\n                            <bmAttributes>3</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </m_value>\r\n                          <Value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bInterval>1</bInterval>\r\n                            <bEndpointAddress>130</bEndpointAddress>\r\n                            <bmAttributes>3</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                      </Nodes>\r\n                    </DescriptorNode>\r\n                  </Nodes>\r\n                </DescriptorNode>\r\n              </Nodes>\r\n            </DescriptorNode>\r\n          </Nodes>\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, DmaChannelPriority=3, DW_Hide_DmaAuto=true, DW_Hide_Usbv2Regs=true, DW_RegSize=8, DW_USB_CHGDET_CTRL=CR0, DW_USB_INTR_CAUSE_HI=CR0, DW_USB_INTR_CAUSE_LO=CR0, DW_USB_INTR_CAUSE_MED=CR0, DW_USB_INTR_LVL_SEL=CR0, DW_USB_INTR_SIE=CR0, DW_USB_INTR_SIE_MASK=CR0, DW_USB_LPM_CTRL=CR0, DW_USB_LPM_STAT=CR0, DW_USB_POWER_CTRL=CR0, EnableBatteryChargDetect=false, EnableCDCApi=true, EnableMidiApi=true, endpointMA=0, endpointMM=0, epDMAautoOptimization=false, extern_cls=false, extern_vbus=true, extern_vnd=false, extJackCount=0, Gen16bitEpAccessApi=false, HandleMscRequests=true, HIDReportDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="HIDReport">\r\n      <Nodes>\r\n        <DescriptorNode Key="USBDescriptor126">\r\n          <m_value d6p1:type="HIDReportDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>HID_REPORT</bDescriptorType>\r\n            <bLength>2</bLength>\r\n            <Name>Generic HID</Name>\r\n            <wLength>36</wLength>\r\n          </m_value>\r\n          <Value d6p1:type="HIDReportDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>HID_REPORT</bDescriptorType>\r\n            <bLength>2</bLength>\r\n            <Name>Generic HID</Name>\r\n            <wLength>36</wLength>\r\n          </Value>\r\n          <Nodes>\r\n            <DescriptorNode Key="USBDescriptor127">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="4" Type="USAGE_PAGE">\r\n                  <Description>(Generic Desktop Controls)</Description>\r\n                  <Value>\r\n                    <unsignedByte>5</unsignedByte>\r\n                    <unsignedByte>1</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="4" Type="USAGE_PAGE">\r\n                  <Description>(Generic Desktop Controls)</Description>\r\n                  <Value>\r\n                    <unsignedByte>5</unsignedByte>\r\n                    <unsignedByte>1</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor129">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="8" Type="USAGE">\r\n                  <Description>(Undefined)</Description>\r\n                  <Value>\r\n                    <unsignedByte>9</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="8" Type="USAGE">\r\n                  <Description>(Undefined)</Description>\r\n                  <Value>\r\n                    <unsignedByte>9</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor130">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="160" Type="COLLECTION">\r\n                  <Description>(Physical)</Description>\r\n                  <Value>\r\n                    <unsignedByte>161</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="160" Type="COLLECTION">\r\n                  <Description>(Physical)</Description>\r\n                  <Value>\r\n                    <unsignedByte>161</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor131">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="8" Type="USAGE">\r\n                  <Description>(Undefined)</Description>\r\n                  <Value>\r\n                    <unsignedByte>9</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="8" Type="USAGE">\r\n                  <Description>(Undefined)</Description>\r\n                  <Value>\r\n                    <unsignedByte>9</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor132">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="160" Type="COLLECTION">\r\n                  <Description>(Physical)</Description>\r\n                  <Value>\r\n                    <unsignedByte>161</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="160" Type="COLLECTION">\r\n                  <Description>(Physical)</Description>\r\n                  <Value>\r\n                    <unsignedByte>161</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor133">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="8" Type="USAGE">\r\n                  <Description>(Undefined)</Description>\r\n                  <Value>\r\n                    <unsignedByte>9</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="8" Type="USAGE">\r\n                  <Description>(Undefined)</Description>\r\n                  <Value>\r\n                    <unsignedByte>9</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor134">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="20" Type="LOGICAL_MINIMUM">\r\n                  <Value>\r\n                    <unsignedByte>21</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="20" Type="LOGICAL_MINIMUM">\r\n                  <Value>\r\n                    <unsignedByte>21</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor135">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="36" Type="LOGICAL_MAXIMUM">\r\n                  <Value>\r\n                    <unsignedByte>37</unsignedByte>\r\n                    <unsignedByte>255</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="36" Type="LOGICAL_MAXIMUM">\r\n                  <Value>\r\n                    <unsignedByte>37</unsignedByte>\r\n                    <unsignedByte>255</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor136">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="116" Type="REPORT_SIZE">\r\n                  <Value>\r\n                    <unsignedByte>117</unsignedByte>\r\n                    <unsignedByte>8</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="116" Type="REPORT_SIZE">\r\n                  <Value>\r\n                    <unsignedByte>117</unsignedByte>\r\n                    <unsignedByte>8</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor137">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="148" Type="REPORT_COUNT">\r\n                  <Value>\r\n                    <unsignedByte>149</unsignedByte>\r\n                    <unsignedByte>64</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="148" Type="REPORT_COUNT">\r\n                  <Value>\r\n                    <unsignedByte>149</unsignedByte>\r\n                    <unsignedByte>64</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor138">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="144" Type="OUTPUT">\r\n                  <Description>(Var)</Description>\r\n                  <Value>\r\n                    <unsignedByte>145</unsignedByte>\r\n                    <unsignedByte>2</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Bits</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="144" Type="OUTPUT">\r\n                  <Description>(Var)</Description>\r\n                  <Value>\r\n                    <unsignedByte>145</unsignedByte>\r\n                    <unsignedByte>2</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Bits</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor139">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="8" Type="USAGE">\r\n                  <Description>(Undefined)</Description>\r\n                  <Value>\r\n                    <unsignedByte>9</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="8" Type="USAGE">\r\n                  <Description>(Undefined)</Description>\r\n                  <Value>\r\n                    <unsignedByte>9</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor140">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="20" Type="LOGICAL_MINIMUM">\r\n                  <Value>\r\n                    <unsignedByte>21</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="20" Type="LOGICAL_MINIMUM">\r\n                  <Value>\r\n                    <unsignedByte>21</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor141">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="36" Type="LOGICAL_MAXIMUM">\r\n                  <Value>\r\n                    <unsignedByte>37</unsignedByte>\r\n                    <unsignedByte>255</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="36" Type="LOGICAL_MAXIMUM">\r\n                  <Value>\r\n                    <unsignedByte>37</unsignedByte>\r\n                    <unsignedByte>255</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor142">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="116" Type="REPORT_SIZE">\r\n                  <Value>\r\n                    <unsignedByte>117</unsignedByte>\r\n                    <unsignedByte>8</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="116" Type="REPORT_SIZE">\r\n                  <Value>\r\n                    <unsignedByte>117</unsignedByte>\r\n                    <unsignedByte>8</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor143">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="148" Type="REPORT_COUNT">\r\n                  <Value>\r\n                    <unsignedByte>149</unsignedByte>\r\n                    <unsignedByte>64</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="148" Type="REPORT_COUNT">\r\n                  <Value>\r\n                    <unsignedByte>149</unsignedByte>\r\n                    <unsignedByte>64</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor144">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="128" Type="INPUT">\r\n                  <Description>(Var)</Description>\r\n                  <Value>\r\n                    <unsignedByte>129</unsignedByte>\r\n                    <unsignedByte>2</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Bits</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="128" Type="INPUT">\r\n                  <Description>(Var)</Description>\r\n                  <Value>\r\n                    <unsignedByte>129</unsignedByte>\r\n                    <unsignedByte>2</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Bits</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor145">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="192" Type="END_COLLECTION">\r\n                  <Value>\r\n                    <unsignedByte>192</unsignedByte>\r\n                  </Value>\r\n                  <Kind>None</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="192" Type="END_COLLECTION">\r\n                  <Value>\r\n                    <unsignedByte>192</unsignedByte>\r\n                  </Value>\r\n                  <Kind>None</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor146">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="192" Type="END_COLLECTION">\r\n                  <Value>\r\n                    <unsignedByte>192</unsignedByte>\r\n                  </Value>\r\n                  <Kind>None</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="192" Type="END_COLLECTION">\r\n                  <Value>\r\n                    <unsignedByte>192</unsignedByte>\r\n                  </Value>\r\n                  <Kind>None</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n          </Nodes>\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, isrGroupArbiter=0, isrGroupBusReset=2, isrGroupEp0=1, isrGroupEp1=1, isrGroupEp2=1, isrGroupEp3=1, isrGroupEp4=1, isrGroupEp5=1, isrGroupEp6=1, isrGroupEp7=1, isrGroupEp8=1, isrGroupLpm=0, isrGroupSof=2, M0S8USBDSS_BLOCK_COUNT_1=0, max_interfaces_num=1, MidiDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="Midi">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, Mode=false, mon_vbus=false, MscDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="MSC">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, MscLogicalUnitsNum=1, out_sof=false, Pid=F232, powerpad_vbus=false, PRIMITIVE_INSTANCE=USB, ProdactName=, ProdactRevision=, REG_SIZE=reg8, RemoveDmaAutoOpt=true, RemoveVbusPin=true, rm_arb_int=false, rm_dma_1=true, rm_dma_2=true, rm_dma_3=true, rm_dma_4=true, rm_dma_5=true, rm_dma_6=true, rm_dma_7=true, rm_dma_8=true, rm_dp_int=false, rm_ep_isr_0=false, rm_ep_isr_1=false, rm_ep_isr_2=false, rm_ep_isr_3=true, rm_ep_isr_4=true, rm_ep_isr_5=true, rm_ep_isr_6=true, rm_ep_isr_7=true, rm_ep_isr_8=true, rm_lpm_int=true, rm_ord_int=true, rm_sof_int=true, rm_usb_int=false, SofTermEnable=false, StringDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="String">\r\n      <Nodes>\r\n        <DescriptorNode Key="LANGID">\r\n          <m_value d6p1:type="StringZeroDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>4</bLength>\r\n            <wLANGID>1033</wLANGID>\r\n          </m_value>\r\n          <Value d6p1:type="StringZeroDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>4</bLength>\r\n            <wLANGID>1033</wLANGID>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor147">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>44</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>Cypress Semiconductor</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>44</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>Cypress Semiconductor</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor148">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>34</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>PSoC3 Bootloader</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>34</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>PSoC3 Bootloader</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n    <DescriptorNode Key="SpecialString">\r\n      <Nodes>\r\n        <DescriptorNode Key="Serial">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>10</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>0001</bString>\r\n            <bUsed>true</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>10</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>0001</bString>\r\n            <bUsed>true</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="EE">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>MSFT100</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>MSFT100</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, UINT_TYPE=uint8, VbusDetectTermEnable=false, VendorName=, Vid=04B4, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=USBFS_v3_10, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=USBFS, CY_INSTANCE_SHORT_NAME=USBFS, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=10, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.0, INSTANCE_NAME=USBFS, )
module USBFS_v3_10_0 (
    sof,
    vbusdet);
    output      sof;
    input       vbusdet;

    parameter epDMAautoOptimization = 0;

          wire  Net_1914;
          wire  Net_1915;
          wire  Net_1916;
          wire  Net_1917;
          wire  Net_1918;
          wire  Net_1919;
          wire [7:0] dma_request;
          wire  Net_1920;
          wire  Net_1921;
          wire  Net_1922;
          wire [7:0] Net_2039;
          wire  Net_2038;
          wire  Net_2037;
          wire  EPs_1_to_7_dma_complete;
          wire  Net_2036;
          wire  Net_2035;
          wire  Net_2034;
          wire  Net_2033;
          wire  Net_2032;
          wire  Net_2031;
          wire  Net_2030;
          wire  Net_2029;
          wire  Net_2028;
          wire  Net_2027;
          wire  Net_2026;
          wire  Net_2025;
          wire  Net_2024;
          wire [7:0] Net_1940;
          wire  Net_1939;
          wire  Net_1938;
          wire  Net_1937;
          wire  Net_1936;
          wire  Net_1935;
          wire  Net_1934;
          wire  Net_1933;
          wire  Net_1932;
          wire  Net_2047;
          wire  Net_1202;
          wire  dma_terminate;
          wire [7:0] Net_2040;
          wire  Net_1010;
    electrical  Net_1000;
    electrical  Net_597;
          wire  Net_1495;
          wire  Net_1498;
          wire  Net_1559;
          wire  Net_1567;
          wire  Net_1576;
          wire  Net_1579;
          wire  Net_1591;
          wire [7:0] dma_complete;
          wire  Net_1588;
          wire  Net_1876;
          wire [8:0] ep_int;
          wire  Net_1889;
          wire  busClk;
          wire  Net_95;


	cy_isr_v1_0
		#(.int_type(2'b10))
		dp_int
		 (.int_signal(Net_1010));


	wire [0:0] tmpOE__Dm_net;
	wire [0:0] tmpFB_0__Dm_net;
	wire [0:0] tmpIO_0__Dm_net;
	wire [0:0] tmpINTERRUPT_0__Dm_net;
	electrical [0:0] tmpSIOVREF__Dm_net;

	cy_psoc3_pins_v1_10
		#(.id("892f6c83-d52a-406f-8c41-59e053415832/8b77a6c4-10a0-4390-971c-672353e2a49c"),
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
		Dm
		 (.oe(tmpOE__Dm_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Dm_net[0:0]}),
		  .analog({Net_597}),
		  .io({tmpIO_0__Dm_net[0:0]}),
		  .siovref(tmpSIOVREF__Dm_net),
		  .interrupt({tmpINTERRUPT_0__Dm_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Dm_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Dp_net;
	wire [0:0] tmpFB_0__Dp_net;
	wire [0:0] tmpIO_0__Dp_net;
	electrical [0:0] tmpSIOVREF__Dp_net;

	cy_psoc3_pins_v1_10
		#(.id("892f6c83-d52a-406f-8c41-59e053415832/618a72fc-5ddd-4df5-958f-a3d55102db42"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b10),
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
		Dp
		 (.oe(tmpOE__Dp_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Dp_net[0:0]}),
		  .analog({Net_1000}),
		  .io({tmpIO_0__Dp_net[0:0]}),
		  .siovref(tmpSIOVREF__Dp_net),
		  .interrupt({Net_1010}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Dp_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    cy_psoc3_usb_v1_0 USB (
        .dp(Net_1000),
        .dm(Net_597),
        .sof_int(sof),
        .arb_int(Net_1889),
        .usb_int(Net_1876),
        .ept_int(ep_int[8:0]),
        .ord_int(Net_95),
        .dma_req(dma_request[7:0]),
        .dma_termin(dma_terminate));


	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_2
		 (.int_signal(ep_int[2]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_1
		 (.int_signal(ep_int[1]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_0
		 (.int_signal(ep_int[0]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		bus_reset
		 (.int_signal(Net_1876));



	cy_isr_v1_0
		#(.int_type(2'b10))
		arb_int
		 (.int_signal(Net_1889));


	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign dma_complete[0] = Net_1922;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_1922));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign dma_complete[1] = Net_1921;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_1921));

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign dma_complete[2] = Net_1920;

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_1920));

	// VirtualMux_4 (cy_virtualmux_v1_0)
	assign dma_complete[3] = Net_1919;

    ZeroTerminal ZeroTerminal_4 (
        .z(Net_1919));

	// VirtualMux_5 (cy_virtualmux_v1_0)
	assign dma_complete[4] = Net_1918;

	// VirtualMux_6 (cy_virtualmux_v1_0)
	assign dma_complete[5] = Net_1917;

    ZeroTerminal ZeroTerminal_5 (
        .z(Net_1918));

    ZeroTerminal ZeroTerminal_6 (
        .z(Net_1917));

	// VirtualMux_7 (cy_virtualmux_v1_0)
	assign dma_complete[6] = Net_1916;

	// VirtualMux_8 (cy_virtualmux_v1_0)
	assign dma_complete[7] = Net_1915;

    ZeroTerminal ZeroTerminal_7 (
        .z(Net_1916));

    ZeroTerminal ZeroTerminal_8 (
        .z(Net_1915));



endmodule

// Component: OneTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\OneTerminal\OneTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.0\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\OneTerminal\OneTerminal.v"
`endif

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=false, Compare1_8=false, Compare2_16=false, Compare2_8=false, CompareStatusEdgeSense=true, CompareType1=1, CompareType1Software=0, CompareType2=1, CompareType2Software=0, CompareValue1=127, CompareValue2=63, CONTROL3=1, ControlReg=false, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG8, CySetRegReplacementString=CY_SET_REG8, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=0, FF16=false, FF8=true, FixedFunction=true, FixedFunctionUsed=1, InterruptOnCMP1=false, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=0, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=1, KillModeMinTime=0, MinimumKillTime=1, OneCompare=true, Period=255, PWMMode=0, PWMModeCenterAligned=0, RegDefReplacementString=reg8, RegSizeReplacementString=uint8, Resolution=8, RstStatusReplacementString=sSTSReg_rstSts, RunMode=0, Status=false, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=false, TermVisibility_interrupt=true, TermVisibility_kill=true, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=true, TermVisibility_pwm1=false, TermVisibility_pwm2=false, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=false, TriggerMode=0, UDB16=false, UDB8=false, UseControl=true, UseInterrupt=true, UseStatus=true, VerilogSectionReplacementString=sP8, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=PWM_v3_30, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_1, CY_INSTANCE_SHORT_NAME=PWM_1, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.0, INSTANCE_NAME=PWM_1, )
module PWM_v3_30_1 (
    reset,
    clock,
    tc,
    pwm1,
    pwm2,
    interrupt,
    capture,
    kill,
    enable,
    trigger,
    cmp_sel,
    pwm,
    ph1,
    ph2);
    input       reset;
    input       clock;
    output      tc;
    output      pwm1;
    output      pwm2;
    output      interrupt;
    input       capture;
    input       kill;
    input       enable;
    input       trigger;
    input       cmp_sel;
    output      pwm;
    output      ph1;
    output      ph2;

    parameter Resolution = 8;

          wire  Net_114;
          wire  Net_113;
          wire  Net_107;
          wire  Net_96;
          wire  Net_55;
          wire  Net_57;
          wire  Net_101;
          wire  Net_54;
          wire  Net_63;

    cy_psoc3_timer_v1_0 PWMHW (
        .timer_reset(reset),
        .capture(capture),
        .enable(Net_113),
        .kill(Net_107),
        .clock(clock),
        .tc(Net_63),
        .compare(Net_57),
        .interrupt(Net_54));

	// vmCompare (cy_virtualmux_v1_0)
	assign pwm = Net_57;

	// vmIRQ (cy_virtualmux_v1_0)
	assign interrupt = Net_54;

	// vmTC (cy_virtualmux_v1_0)
	assign tc = Net_63;

    OneTerminal OneTerminal_1 (
        .o(Net_113));

	// FFKillMux (cy_virtualmux_v1_0)
	assign Net_107 = kill;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_114));



endmodule

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

// top
module top ;

          wire  Net_242;
          wire  Net_241;
          wire  Net_240;
          wire  Net_239;
          wire  Net_238;
          wire  Net_237;
          wire  Net_236;
          wire  Net_235;
          wire  Net_234;
          wire  Net_233;
          wire  Net_163;
    electrical  Net_47;
          wire  Net_13;
          wire  Net_12;
          wire  Net_177;
          wire  Net_17;
          wire  Net_137;

    USBFS_v3_10_0 USBFS (
        .sof(Net_12),
        .vbusdet(1'b0));
    defparam USBFS.epDMAautoOptimization = 0;

	wire [0:0] tmpOE__LED_net;
	wire [0:0] tmpFB_0__LED_net;
	wire [0:0] tmpIO_0__LED_net;
	wire [0:0] tmpINTERRUPT_0__LED_net;
	electrical [0:0] tmpSIOVREF__LED_net;

	cy_psoc3_pins_v1_10
		#(.id("e851a3b9-efb8-48be-bbb8-b303b216c393"),
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
		  .use_annotation(1'b1),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		LED
		 (.oe(tmpOE__LED_net),
		  .y({Net_17}),
		  .fb({tmpFB_0__LED_net[0:0]}),
		  .io({tmpIO_0__LED_net[0:0]}),
		  .siovref(tmpSIOVREF__LED_net),
		  .interrupt({tmpINTERRUPT_0__LED_net[0:0]}),
		  .annotation({Net_47}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__LED_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_clock_v1_0
		#(.id("8d6e1ae2-bb1d-4c4c-bdac-a9fa60af6483"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("1000000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_1
		 (.clock_out(Net_137));


    PWM_v3_30_1 PWM_1 (
        .reset(Net_177),
        .clock(Net_137),
        .tc(Net_233),
        .pwm1(Net_234),
        .pwm2(Net_235),
        .interrupt(Net_236),
        .capture(1'b0),
        .kill(Net_177),
        .enable(1'b1),
        .trigger(1'b0),
        .cmp_sel(1'b0),
        .pwm(Net_17),
        .ph1(Net_241),
        .ph2(Net_242));
    defparam PWM_1.Resolution = 8;

    assign Net_177 = 1'h0;



endmodule


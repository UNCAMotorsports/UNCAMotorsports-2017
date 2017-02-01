#include <DAC_MCP49xx.h>
#include <kinetis_flexcan.h>
#include <FlexCAN.h>

FlexCAN CANBus(1000000);
CAN_message_t rxmsg;

void setup(){
    // Init pins
    // Init sensors
    // Init state machine
    // Check Shutdown Circuit
}

void loop(){

    // Read CAN message
        // Handle CAN message

    // Anything changed?
        // Update Filter Measurements

    // Any Timeouts?
        // Handle Timeout

    // Compute New(est) state

    // Every 1ms:
        // Update Control Loop
        // Update Throttle
}
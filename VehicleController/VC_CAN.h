// VC_CAN.h

#ifndef _VC_CAN_h
#define _VC_CAN_h

#if defined(ARDUINO) && ARDUINO >= 100
	#include "arduino.h"
#else
	#include "WProgram.h"
#endif

#include <FlexCAN.h>
#include "VC_VarStore.h"
#include "VC_Timers.h"

typedef enum {
    CAN_MSG_HARDFAULT = 0x000,
    CAN_MSG_SOFTFAULT = 0x001,
    CAN_MSG_EXITVEHICLE = 0x002,
    CAN_MSG_CLEARFAULT = 0x003,
    CAN_MSG_READYTODRIVE = 0x004,
    CAN_MSG_GLVCURRENT = 0x007,
    CAN_MSG_TSCURRENT = 0x008,
    CAN_MSG_MOTOR1CURRENT = 0x009,
    CAN_MSG_MOTOR2CURRENT = 0x00A,
    CAN_MSG_SHUTDOWNCURRENT = 0x00B,
    CAN_MSG_GLVVOLTAGE = 0x00C,
    CAN_MSG_THROTTLE = 0x010,
    CAN_MSG_BRAKE = 0x011,
    CAN_MSG_STEERING = 0x012,
    CAN_MSG_FRRPM = 0x013,
    CAN_MSG_FLRPM = 0x014,
    CAN_MSG_RRRPM = 0x015,
    CAN_MSG_RLRPM = 0x016,
    CAN_MSG_FRSUS = 0x017,
    CAN_MSG_FLSUS = 0x018,
    CAN_MSG_RRSUS = 0x019,
    CAN_MSG_RLSUS = 0x01A,
    CAN_MSG_MOTOR1RPM = 0x01B,
    CAN_MSG_MOTOR2RPM = 0x01C,
    CAN_MSG_GPSLAT = 0x020,
    CAN_MSG_GPSLON = 0x021,
    CAN_MSG_GPSSPEED = 0x022,
    CAN_MSG_GPSALT = 0x023,
    CAN_MSG_BAROPRESS = 0x024,
    CAN_MSG_AMBTEMP = 0x025,
    CAN_MSG_AXYZ = 0x026,
    CAN_MSG_GXYZ = 0x027,
    CAN_MSG_MXYZ = 0x028,
    CAN_MSG_GPSTIME = 0x029,
    CAN_MSG_NUMSATS = 0x02A,
    CAN_MSG_YAW = 0x02B,
    CAN_MSG_PITCH = 0x02C,
    CAN_MSG_ROLL = 0x02D,
    CAN_MSG_QW = 0x02E,
    CAN_MSG_ALG = 0x02F,
    CAN_MSG_STATEX = 0x030,
    CAN_MSG_STATEY = 0x031,
    CAN_MSG_STATEZ = 0x032,
    CAN_MSG_MOTOR1OUT = 0x033,
    CAN_MSG_MOTOR2OUT = 0x034,
    CAN_MSG_INTERLOCKOPEN = 0x036,
    CAN_MSG_PACKVOLAGE = 0x037,
    CAN_MSG_PACKCURRENT = 0x038,
    CAN_MSG_PACKOVERUNDERVOLT = 0x039,
    CAN_MSG_PACKOVERCURRENT = 0x03A,
    CAN_MSG_PACKSTATUS = 0x03B,
    CAN_MSG_PACKCELLTEMP = 0x03C,
    CAN_MSG_PACKAMBTEMP = 0x03D,
    CAN_MSG_MOTOROVERTEMP = 0x03F,
    CAN_MSG_MOTOROVERSPEED = 0x040,
    CAN_MSG_MOTORTEMP = 0x041,
    CAN_MSG_MOTORRPM = 0x042,
    CAN_MSG_MOTORTORQUE = 0x043,
    CAN_MSG_MOTORPOWER = 0x044,
    CAN_MSG_NODESTART = 0x046,
    CAN_MSG_NODEMODE = 0x047,
    CAN_MSG_NODEID = 0x048,
    CAN_MSG_NODENAME = 0x049,
    CAN_MSG_NODESTATUS = 0x04A,
    CAN_MSG_NODEGETCONFIG = 0x04B,
    CAN_MSG_NODEUPDATECONFIG = 0x04C,
    CAN_MSG_NODESOFTRESET = 0x04D,
    CAN_MSG_NODEHALT = 0x04E
} vc_can_id;


void handle_hardFault(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_softFault(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_exitVehicle(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_clearFault(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_readyToDrive(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_glvCurrent(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_tsCurrent(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_motor1Current(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_motor2Current(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_shutdownCurrent(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_glvVoltage(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_throttle(CAN_message_t *rxpt){
    setThrottle(rxpt->buf[0] << 8 | rxpt->buf[1]);
    throttleTimer = TIMEOUT_THROTTLE;
}

void handle_brake(CAN_message_t *rxpt){
    setBrake(rxpt->buf[0] << 8 | rxpt->buf[1]);
    brakeTimer = TIMEOUT_BRAKE;
}

void handle_steering(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_frRPM(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_flRPM(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_rrRPM(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_rlRPM(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_frSus(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_flSus(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_rrSus(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_rlSus(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_motor1RPM(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_motor2RPM(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_gpsLat(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_gpsLon(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_gpsSpeed(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_gpsAlt(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_baroPress(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_ambTemp(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_Axyz(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_Gxyz(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_Mxyz(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_gpsTime(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_numSats(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_yaw(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_pitch(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_roll(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_qw(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_alg(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_stateX(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_stateY(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_stateZ(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_motor1Out(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_motor2Out(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_interlockOpen(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_packVolage(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_packCurrent(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_packOverUnderVolt(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_packOverCurrent(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_packStatus(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_packCellTemp(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_packAmbTemp(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_motorOverTemp(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_motorOverSpeed(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_motorTemp(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_motorRPM(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_motorTorque(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_motorPower(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_nodeStart(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_nodeMode(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_nodeID(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_nodeName(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_nodeStatus(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_nodeGetConfig(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_nodeUpdateConfig(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_nodeSoftReset(CAN_message_t *rxpt){
    // Not Implemented
}

void handle_nodeHalt(CAN_message_t *rxpt){
    // Not Implemented
}



void handleCANMessage(CAN_message_t *rxpt){
    switch (rxpt->id){
    case CAN_MSG_HARDFAULT: handle_hardFault(rxpt); break;
    case CAN_MSG_SOFTFAULT: handle_softFault(rxpt); break;
    case CAN_MSG_EXITVEHICLE: handle_exitVehicle(rxpt); break;
    case CAN_MSG_CLEARFAULT: handle_clearFault(rxpt); break;
    case CAN_MSG_READYTODRIVE: handle_readyToDrive(rxpt); break;
    case CAN_MSG_GLVCURRENT: handle_glvCurrent(rxpt); break;
    case CAN_MSG_TSCURRENT: handle_tsCurrent(rxpt); break;
    case CAN_MSG_MOTOR1CURRENT: handle_motor1Current(rxpt); break;
    case CAN_MSG_MOTOR2CURRENT: handle_motor2Current(rxpt); break;
    case CAN_MSG_SHUTDOWNCURRENT: handle_shutdownCurrent(rxpt); break;
    case CAN_MSG_GLVVOLTAGE: handle_glvVoltage(rxpt); break;
    case CAN_MSG_THROTTLE: handle_throttle(rxpt); break;
    case CAN_MSG_BRAKE: handle_brake(rxpt); break;
    case CAN_MSG_STEERING: handle_steering(rxpt); break;
    case CAN_MSG_FRRPM: handle_frRPM(rxpt); break;
    case CAN_MSG_FLRPM: handle_flRPM(rxpt); break;
    case CAN_MSG_RRRPM: handle_rrRPM(rxpt); break;
    case CAN_MSG_RLRPM: handle_rlRPM(rxpt); break;
    case CAN_MSG_FRSUS: handle_frSus(rxpt); break;
    case CAN_MSG_FLSUS: handle_flSus(rxpt); break;
    case CAN_MSG_RRSUS: handle_rrSus(rxpt); break;
    case CAN_MSG_RLSUS: handle_rlSus(rxpt); break;
    case CAN_MSG_MOTOR1RPM: handle_motor1RPM(rxpt); break;
    case CAN_MSG_MOTOR2RPM: handle_motor2RPM(rxpt); break;
    case CAN_MSG_GPSLAT: handle_gpsLat(rxpt); break;
    case CAN_MSG_GPSLON: handle_gpsLon(rxpt); break;
    case CAN_MSG_GPSSPEED: handle_gpsSpeed(rxpt); break;
    case CAN_MSG_GPSALT: handle_gpsAlt(rxpt); break;
    case CAN_MSG_BAROPRESS: handle_baroPress(rxpt); break;
    case CAN_MSG_AMBTEMP: handle_ambTemp(rxpt); break;
    case CAN_MSG_AXYZ: handle_Axyz(rxpt); break;
    case CAN_MSG_GXYZ: handle_Gxyz(rxpt); break;
    case CAN_MSG_MXYZ: handle_Mxyz(rxpt); break;
    case CAN_MSG_GPSTIME: handle_gpsTime(rxpt); break;
    case CAN_MSG_NUMSATS: handle_numSats(rxpt); break;
    case CAN_MSG_YAW: handle_yaw(rxpt); break;
    case CAN_MSG_PITCH: handle_pitch(rxpt); break;
    case CAN_MSG_ROLL: handle_roll(rxpt); break;
    case CAN_MSG_QW: handle_qw(rxpt); break;
    case CAN_MSG_ALG: handle_alg(rxpt); break;
    case CAN_MSG_STATEX: handle_stateX(rxpt); break;
    case CAN_MSG_STATEY: handle_stateY(rxpt); break;
    case CAN_MSG_STATEZ: handle_stateZ(rxpt); break;
    case CAN_MSG_MOTOR1OUT: handle_motor1Out(rxpt); break;
    case CAN_MSG_MOTOR2OUT: handle_motor2Out(rxpt); break;
    case CAN_MSG_INTERLOCKOPEN: handle_interlockOpen(rxpt); break;
    case CAN_MSG_PACKVOLAGE: handle_packVolage(rxpt); break;
    case CAN_MSG_PACKCURRENT: handle_packCurrent(rxpt); break;
    case CAN_MSG_PACKOVERUNDERVOLT: handle_packOverUnderVolt(rxpt); break;
    case CAN_MSG_PACKOVERCURRENT: handle_packOverCurrent(rxpt); break;
    case CAN_MSG_PACKSTATUS: handle_packStatus(rxpt); break;
    case CAN_MSG_PACKCELLTEMP: handle_packCellTemp(rxpt); break;
    case CAN_MSG_PACKAMBTEMP: handle_packAmbTemp(rxpt); break;
    case CAN_MSG_MOTOROVERTEMP: handle_motorOverTemp(rxpt); break;
    case CAN_MSG_MOTOROVERSPEED: handle_motorOverSpeed(rxpt); break;
    case CAN_MSG_MOTORTEMP: handle_motorTemp(rxpt); break;
    case CAN_MSG_MOTORRPM: handle_motorRPM(rxpt); break;
    case CAN_MSG_MOTORTORQUE: handle_motorTorque(rxpt); break;
    case CAN_MSG_MOTORPOWER: handle_motorPower(rxpt); break;
    case CAN_MSG_NODESTART: handle_nodeStart(rxpt); break;
    case CAN_MSG_NODEMODE: handle_nodeMode(rxpt); break;
    case CAN_MSG_NODEID: handle_nodeID(rxpt); break;
    case CAN_MSG_NODENAME: handle_nodeName(rxpt); break;
    case CAN_MSG_NODESTATUS: handle_nodeStatus(rxpt); break;
    case CAN_MSG_NODEGETCONFIG: handle_nodeGetConfig(rxpt); break;
    case CAN_MSG_NODEUPDATECONFIG: handle_nodeUpdateConfig(rxpt); break;
    case CAN_MSG_NODESOFTRESET: handle_nodeSoftReset(rxpt); break;
    case CAN_MSG_NODEHALT: handle_nodeHalt(rxpt); break;
    }
}
#endif
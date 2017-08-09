#include "Adafruit_GPS.h"
#include "VCDefines.h"

Adafruit_GPS myGPS(&Serial3);

Adafruit_GPS* getGPS(){
    return &myGPS;
}

char readGPS(){
    return myGPS.read();
}

bool gpsBegin(){

    // We need to set the baud BEFORE setting rates, as the GPS module checks baud to
    // ensure it can broadcast at those rates
    Serial3.begin(9600);    // At cold start, the GPS is at 9600 baud
    myGPS.sendCommand(PMTK_SET_BAUD_115200);    // Set the GPS to 115200 baud
    Serial3.end();  // Stop the 9600 baud connection
    delay(10);
    Serial3.begin(115200);  // Reconnect at 115200 baud

    myGPS.sendCommand(PMTK_SET_NMEA_OUTPUT_RMCGGA);     // RMC and GGA data
    myGPS.sendCommand(PMTK_SET_NMEA_UPDATE_10HZ);       // 10 Hz update rate
    myGPS.sendCommand(PMTK_API_SET_FIX_CTL_5HZ);        // 5 Hz fix rate
    


#ifdef WAIT_GPS
    Serial.println("Waiting for GPS Fix...");
    uint32_t count = 0;
    while (1){
        myGPS.read();
        if (myGPS.newNMEAreceived()){
            if (myGPS.parse(myGPS.lastNMEA()))
            {
                if (myGPS.fixquality)
                    break;
            }
        }
        delay(1);

        if (++count % 2000 == 0){
            //shortBeep();
            count = 0;
        }
    }

#endif
    Serial.println(F("GPS Initialized."));
    return true;
}

bool gpsTask(){
    readGPS();
    if (myGPS.newNMEAreceived()){
        if (myGPS.parse(myGPS.lastNMEA()))
        {
#ifdef DEBUG_GPS
            Serial.print("\nTime: ");
            Serial.print(myGPS.hour, DEC); Serial.print(':');
            Serial.print(myGPS.minute, DEC); Serial.print(':');
            Serial.print(myGPS.seconds, DEC); Serial.print('.');
            Serial.println(myGPS.milliseconds);
            Serial.print("Date: ");
            Serial.print(myGPS.day, DEC); Serial.print('/');
            Serial.print(myGPS.month, DEC); Serial.print("/20");
            Serial.println(myGPS.year, DEC);
            Serial.print("Fix: "); Serial.print((int)myGPS.fix);
            Serial.print(" quality: "); Serial.println((int)myGPS.fixquality);
            if (myGPS.fix) {
                Serial.print("Location: ");
                Serial.print(myGPS.latitude, 4); Serial.print(myGPS.lat);
                Serial.print(", ");
                Serial.print(myGPS.longitude, 4); Serial.println(myGPS.lon);
                Serial.print("Location (in degrees, works with Google Maps): ");
                Serial.print(myGPS.latitudeDegrees, 6);
                Serial.print(", ");
                Serial.println(myGPS.longitudeDegrees, 6);

                Serial.print("Speed (knots): "); Serial.println(myGPS.speed);
                Serial.print("Angle: "); Serial.println(myGPS.angle);
                Serial.print("Altitude: "); Serial.println(myGPS.altitude);
                Serial.print("Satellites: "); Serial.println((int)myGPS.satellites);
            }
#endif
            return true;
        }
        return false;
    }
    return false;
}
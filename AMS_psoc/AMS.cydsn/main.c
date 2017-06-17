/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/
#include "project.h"

#if defined (__GNUC__)
        asm(".global _printf_float");
#endif

#define USBFS_DEVICE (0u)

//comment out to disable all usb_uart comms
//#define SERIAL_DEBUG

//the buffer size is equal to the maximum packet size of the in and
//out bulk endpoints
#define USBUART_BUFFER_SIZE (64u)
#define LINE_STR_LENGTH     (20u)
#define NODE_ID             (0x16)

uint32 ID;
uint8 data[8];
uint8 CAN_flag[8];
uint8 dlc;
uint8 j = 0;
uint8 i = 0;
uint16 count;
char8 buffer[USBUART_BUFFER_SIZE];

typedef struct{
    uint8 priority;
    uint8 pgn;
    uint8 destination;
    uint8 source;
    uint8 payload[8];
}frame;

frame buff[16];


uint16 cellVolt[24];
uint16 modTemp[16];
uint32 temptime = 0;

int printf(const char *format, ...);
int sprintf(char *out, const char *format, ...);
void quickprint(void);
void canLinkMask(void);
void switchPgn(frame * msg);
void addressClaim();
void setRates();
void getVolts();
void getTempsOne();
void getTempsTwo();
void cancelBalance();
void startBalance();

int main(void)
{
    for(i = 0; i < 24; i++){
        cellVolt[i] = 0;   
    }
    for(i = 0; i < 16; i++){
        modTemp[i] = 0;   
    }
    CAN_Start();
    canLinkMask();
    Control_Reg_1_Write(1);
    CyDelay(2000);
    Control_Reg_1_Write(0);
    CyGlobalIntEnable; /* Enable global interrupts. */
    
    addressClaim();
    setRates();
    //getVolts();
    getTempsOne();
    getTempsTwo();
    
    USBUART_Start(USBFS_DEVICE, USBUART_5V_OPERATION);
    
    /* Place your initialization/startup code here (e.g. MyInst_Start()) */
    
    for(;;)
    {
        temptime++;
        if(temptime>=100000){
            getTempsOne();   
            temptime = 0;
        }
        //Host can send double SET_INTERFACE request
        if(0u != USBUART_IsConfigurationChanged())
        {
            //Initialize IN endpoints when device is configured
            if(0u != USBUART_GetConfiguration())
            {
                //enumeration is done, enable OUT endpoint to receive data from host
                USBUART_CDC_Init();   
            }
        }
        
        
        
        if(CAN_flag[0] != 0){
            for(j = 0; j < 8; j++){
                
                ID = CAN_GET_RX_ID(j);
                buff[j].priority =    (ID>>26) & 0b00000111;
                buff[j].pgn =         (ID>>16) & 0x000000FF;
                buff[j].destination = (ID>> 8 )& 0x000000FF;
                buff[j].source =      (ID)     & 0x000000FF;
                dlc = CAN_GET_DLC(j);                
                for(i=0; i < dlc; i++){
                    buff[j].payload[i] = CAN_RX_DATA_BYTE(j,i);
                }
                #ifdef SERIAL_DEBUG //print to usbuart comms
                sprintf(buffer,"priority: %X ",buff[j].priority);
                while(USBUART_CDCIsReady()==0)
                {
                }
                USBUART_PutString(buffer);
                sprintf(buffer,"pgn: %X dest: %X, src: %x ",buff[j].pgn \
                        ,buff[j].destination,buff[j].source);
                while(USBUART_CDCIsReady()==0)
                {
                }
                USBUART_PutString(buffer);
                for(i=0; i<dlc; i++){
                    sprintf(buffer,"%X ",buff[j].payload[i]);
                    while(USBUART_CDCIsReady()==0)
                {
                }
                    USBUART_PutString(buffer);
                }
                while(USBUART_CDCIsReady()==0)
                {
                }
                USBUART_PutString("\n");
                #endif
                
            
            }
            
            CAN_flag[0] = 0;
            sprintf(buffer,"V: %x %x %x %x %x %x\n",cellVolt[0],cellVolt[1],cellVolt[2],\
            cellVolt[3],cellVolt[4],cellVolt[5]);
            while(USBUART_CDCIsReady()==0)
            {
            }
            USBUART_PutString(buffer);
            sprintf(buffer,"T: %d %d %d %d %d %d %d %d\n",modTemp[0],modTemp[1],\
            modTemp[2],modTemp[3],modTemp[4],modTemp[5],modTemp[6],modTemp[7]);
            while(USBUART_CDCIsReady()==0)
            {
            }
            USBUART_PutString(buffer);
        }
        if(CAN_flag[1] != 0){
            for(j = 8; j < 16; j++){
                ID = CAN_GET_RX_ID(j);
                buff[j].priority =    (ID>>26) & 0b00000111;
                buff[j].pgn =         (ID>>16) & 0x000000FF;
                buff[j].destination = (ID>> 8 )& 0x000000FF;
                buff[j].source =      (ID)     & 0x000000FF;
                dlc = CAN_GET_DLC(j);                
                for(i=0; i < dlc; i++){
                    buff[j].payload[i] = CAN_RX_DATA_BYTE(j,i);
                }
                #ifdef SERIAL_DEBUG
                sprintf(buffer,"priority: %X ",buff[j].priority);
                while(USBUART_CDCIsReady()==0)
                {
                }
                USBUART_PutString(buffer);
                sprintf(buffer,"pgn: %X dest: %X, src: %x ",buff[j].pgn \
                        ,buff[j].destination,buff[j].source);
                while(USBUART_CDCIsReady()==0)
                {
                }
                USBUART_PutString(buffer);
                for(i=0; i<dlc; i++){
                    sprintf(buffer,"%X ",buff[j].payload[i]);
                    while(USBUART_CDCIsReady()==0)
                    {
                    }
                    USBUART_PutString(buffer);
                }
                while(USBUART_CDCIsReady()==0)
                {
                }
                USBUART_PutString("\n");
                #endif
            }
            CAN_flag[1] = 0;
        }
        
        for(i = 0; i < 16; i++){
            if((buff[i].destination==0x16) || (buff[i].destination==0xFF)){
                switchPgn(&(buff[i]));
            }
        }
        
    }
}
/*
    Copyright 2001 Georges Menie
    https://www.menie.org/georges/embedded/small_printf_source_code.html

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

/*
	putchar is the only external dependency for this file,
	if you have a working putchar, just remove the following
	define. If the function should be called something else,
	replace outbyte(c) by your own function call.
*/
#define putchar(c) USBUART_PutChar(c)

static void printchar(char **str, int c)
{
	//extern int putchar(int c);
	if (str) {
		**str = c;
		++(*str);
	}
	else (void)putchar(c);
}

#define PAD_RIGHT 1
#define PAD_ZERO 2

static int prints(char **out, const char *string, int width, int pad)
{
	register int pc = 0, padchar = ' ';

	if (width > 0) {
		register int len = 0;
		register const char *ptr;
		for (ptr = string; *ptr; ++ptr) ++len;
		if (len >= width) width = 0;
		else width -= len;
		if (pad & PAD_ZERO) padchar = '0';
	}
	if (!(pad & PAD_RIGHT)) {
		for ( ; width > 0; --width) {
			printchar (out, padchar);
			++pc;
		}
	}
	for ( ; *string ; ++string) {
		printchar (out, *string);
		++pc;
	}
	for ( ; width > 0; --width) {
		printchar (out, padchar);
		++pc;
	}

	return pc;
}

/* the following should be enough for 32 bit int */
#define PRINT_BUF_LEN 12

static int printi(char **out, int i, int b, int sg, int width, int pad, int letbase)
{
	char print_buf[PRINT_BUF_LEN];
	register char *s;
	register int t, neg = 0, pc = 0;
	register unsigned int u = i;

	if (i == 0) {
		print_buf[0] = '0';
		print_buf[1] = '\0';
		return prints (out, print_buf, width, pad);
	}

	if (sg && b == 10 && i < 0) {
		neg = 1;
		u = -i;
	}

	s = print_buf + PRINT_BUF_LEN-1;
	*s = '\0';

	while (u) {
		t = u % b;
		if( t >= 10 )
			t += letbase - '0' - 10;
		*--s = t + '0';
		u /= b;
	}

	if (neg) {
		if( width && (pad & PAD_ZERO) ) {
			printchar (out, '-');
			++pc;
			--width;
		}
		else {
			*--s = '-';
		}
	}

	return pc + prints (out, s, width, pad);
}

static int print(char **out, int *varg)
{
	register int width, pad;
	register int pc = 0;
	register char *format = (char *)(*varg++);
	char scr[2];

	for (; *format != 0; ++format) {
		if (*format == '%') {
			++format;
			width = pad = 0;
			if (*format == '\0') break;
			if (*format == '%') goto out;
			if (*format == '-') {
				++format;
				pad = PAD_RIGHT;
			}
			while (*format == '0') {
				++format;
				pad |= PAD_ZERO;
			}
			for ( ; *format >= '0' && *format <= '9'; ++format) {
				width *= 10;
				width += *format - '0';
			}
			if( *format == 's' ) {
				register char *s = *((char **)varg++);
				pc += prints (out, s?s:"(null)", width, pad);
				continue;
			}
			if( *format == 'd' ) {
				pc += printi (out, *varg++, 10, 1, width, pad, 'a');
				continue;
			}
			if( *format == 'x' ) {
				pc += printi (out, *varg++, 16, 0, width, pad, 'a');
				continue;
			}
			if( *format == 'X' ) {
				pc += printi (out, *varg++, 16, 0, width, pad, 'A');
				continue;
			}
			if( *format == 'u' ) {
				pc += printi (out, *varg++, 10, 0, width, pad, 'a');
				continue;
			}
			if( *format == 'c' ) {
				/* char are converted to int then pushed on the stack */
				scr[0] = *varg++;
				scr[1] = '\0';
				pc += prints (out, scr, width, pad);
				continue;
			}
		}
		else {
		out:
			printchar (out, *format);
			++pc;
		}
	}
	if (out) **out = '\0';
	return pc;
}

/* assuming sizeof(void *) == sizeof(int) */

int printf(const char *format, ...)
{
	register int *varg = (int *)(&format);
	return print(0, varg);
}

int sprintf(char *out, const char *format, ...)
{
	register int *varg = (int *)(&format);
	return print(&out, varg);
}

#ifdef TEST_PRINTF
int main(void)
{
	char *ptr = "Hello world!";
	char *np = 0;
	int i = 5;
	unsigned int bs = sizeof(int)*8;
	int mi;
	char buf[80];

	mi = (1 << (bs-1)) + 1;
	printf("%s\n", ptr);
	printf("printf test\n");
	printf("%s is null pointer\n", np);
	printf("%d = 5\n", i);
	printf("%d = - max int\n", mi);
	printf("char %c = 'a'\n", 'a');
	printf("hex %x = ff\n", 0xff);
	printf("hex %02x = 00\n", 0);
	printf("signed %d = unsigned %u = hex %x\n", -3, -3, -3);
	printf("%d %s(s)%", 0, "message");
	printf("\n");
	printf("%d %s(s) with %%\n", 0, "message");
	sprintf(buf, "justif: \"%-10s\"\n", "left"); printf("%s", buf);
	sprintf(buf, "justif: \"%10s\"\n", "right"); printf("%s", buf);
	sprintf(buf, " 3: %04d zero padded\n", 3); printf("%s", buf);
	sprintf(buf, " 3: %-4d left justif.\n", 3); printf("%s", buf);
	sprintf(buf, " 3: %4d right justif.\n", 3); printf("%s", buf);
	sprintf(buf, "-3: %04d zero padded\n", -3); printf("%s", buf);
	sprintf(buf, "-3: %-4d left justif.\n", -3); printf("%s", buf);
	sprintf(buf, "-3: %4d right justif.\n", -3); printf("%s", buf);

	return 0;
}

/*
 * if you compile this file with
 *   gcc -Wall $(YOUR_C_OPTIONS) -DTEST_PRINTF -c printf.c
 * you will get a normal warning:
 *   printf.c:214: warning: spurious trailing `%' in format
 * this line is testing an invalid % at the end of the format string.
 *
 * this should display (on 32bit int machine) :
 *
 * Hello world!
 * printf test
 * (null) is null pointer
 * 5 = 5
 * -2147483647 = - max int
 * char a = 'a'
 * hex ff = ff
 * hex 00 = 00
 * signed -3 = unsigned 4294967293 = hex fffffffd
 * 0 message(s)
 * 0 message(s) with %
 * justif: "left      "
 * justif: "     right"
 *  3: 0003 zero padded
 *  3: 3    left justif.
 *  3:    3 right justif.
 * -3: -003 zero padded
 * -3: -3   left justif.
 * -3:   -3 right justif.
 */

#endif

void quickprint(void){
    uint8 j = 0;
    uint8 i = 0;
    
            for(j = 0; j < 8; j++){
                ID = CAN_GET_RX_ID(j);
                dlc = CAN_GET_DLC(j);
                USBUART_PutChar(j+48);                
                sprintf(buffer,"ID: %X Data: ",(unsigned int)ID);
                USBUART_PutString(buffer);
                
                for(i=0; i < dlc; i++){
                    data[i] = CAN_RX_DATA_BYTE(j,i);
                    sprintf(buffer,"%X ",data[i]);
                    USBUART_PutString(buffer);
                }
                USBUART_PutString("\n");
                CAN_flag[j] = 0;
            }   
}

void canLinkMask(){
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX0_AMR, 0xffffffff);
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX1_AMR, 0xffffffff);
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX2_AMR, 0xffffffff);
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX3_AMR, 0xffffffff);
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX4_AMR, 0xffffffff);
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX5_AMR, 0xffffffff);
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX6_AMR, 0xffffffff);
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX7_AMR, 0xffffffff);
    
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX8_AMR, 0xffffffff);
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX9_AMR, 0xffffffff);
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX10_AMR, 0xffffffff);
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX11_AMR, 0xffffffff);
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX12_AMR, 0xffffffff);
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX13_AMR, 0xffffffff);
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX14_AMR, 0xffffffff);
    CAN_RXRegisterInit((uint32)CAN_CanIP__RX15_AMR, 0xffffffff);
}

void switchPgn(frame * msg){
    uint8 tChannel[4];
    uint8 vOffset,tOffset;
    if(msg->source==0x25){
        vOffset = 0;
        tOffset = 0;
    }
    else{
        vOffset = 12;
        tOffset = 8;
    }
        switch(msg->pgn){
            
            case 0xD1:
            
            break;
            case 0xD2:
            
            break;
            case 0xD3:
            
            break;
            case 0xD4:
            
            break;
            case 0xD5:
            
            break;
            case 0xD6: //lower 4 cell voltages
                cellVolt[0+vOffset] = (((msg->payload[1])<<8)|(msg->payload[0]))&0x3FFF;
                cellVolt[1+vOffset] = (((msg->payload[3])<<8)|(msg->payload[2]))&0x3FFF;
                cellVolt[2+vOffset] = (((msg->payload[5])<<8)|(msg->payload[4]))&0x3FFF;
                cellVolt[3+vOffset] = (((msg->payload[7])<<8)|(msg->payload[6]))&0x3FFF;
            break;
            case 0xD7: //middle 4 cell voltages
                cellVolt[4+vOffset] = ((msg->payload[1]<<8)|(msg->payload[0]))&0x3FFF;
                cellVolt[5+vOffset] = ((msg->payload[3]<<8)|(msg->payload[2]))&0x3FFF;
                cellVolt[6+vOffset] = ((msg->payload[5]<<8)|(msg->payload[4]))&0x3FFF;
                cellVolt[7+vOffset] = ((msg->payload[7]<<8)|(msg->payload[6]))&0x3FFF;
            break;
            case 0xD8: //upper 4 cell voltages
                cellVolt[8+vOffset] = ((msg->payload[1]<<8)|(msg->payload[0]))&0x3FFF;
                cellVolt[9+vOffset] = ((msg->payload[3]<<8)|(msg->payload[2]))&0x3FFF;
                cellVolt[10+vOffset] = ((msg->payload[5]<<8)|(msg->payload[4]))&0x3FFF;
                cellVolt[11+vOffset] = ((msg->payload[7]<<8)|(msg->payload[6]))&0x3FFF;
            break;
            case 0xD9:
            
            break;
            case 0xDA:
                tChannel[0+tOffset] = msg->payload[0];
                tChannel[1+tOffset] = msg->payload[3];
                modTemp[tChannel[0]-1] = msg->payload[2];
                modTemp[tChannel[1]-1] = msg->payload[5];
            
            break;
            case 0xDB:
            
            break;
            case 0xDC:
            
            break;
            case 0xDD:
            
            break;
            case 0xDE:
            
            break;
            case 0xDF:
            
            break;
            case 0xC0:
            
            break;
            case 0xC1:
            
            break;
            default:
            ;
        }
}
void addressClaim(){
    CAN_TX_MSG claim;
    CAN_DATA_BYTES_MSG claimData;
    
    claim.id = 0x18eeff16;
    claim.ide = 1u;
    claim.dlc = 8u;
    claim.rtr = 0u;
    claim.irq = 0u;
    claim.msg = &claimData;
    claimData.byte[0] = 0x16;
    claimData.byte[1] = 0x00;
    claimData.byte[2] = 0x00;
    claimData.byte[3] = 0x00;
    claimData.byte[4] = 0x00;
    claimData.byte[5] = 0x02;
    claimData.byte[6] = 0x00;
    claimData.byte[7] = 0x00;
    
    
    CAN_SendMsg(&claim);
}
void setRates(){
    CAN_TX_MSG claim;
    CAN_DATA_BYTES_MSG claimData;
    
    claim.id = 0x18deff16;
    claim.ide = 1u;
    claim.dlc = 5u;
    claim.rtr = 0u;
    claim.irq = 0u;
    claim.msg = &claimData;
    claimData.byte[0] = 0xe8;
    claimData.byte[1] = 0x03;
    claimData.byte[2] = 0x10;
    claimData.byte[3] = 0x27;
    claimData.byte[4] = 0x20;  
    
    CAN_SendMsg(&claim);
}
void getVolts(){
    CAN_TX_MSG claim;
    CAN_DATA_BYTES_MSG claimData;
    
    claim.id = 0x18eaff16;
    claim.ide = 1u;
    claim.dlc = 3u;
    claim.rtr = 0u;
    claim.irq = 0u;
    claim.msg = &claimData;
    claimData.byte[0] = 0xff;
    claimData.byte[1] = 0xd6;
    claimData.byte[2] = 0x18;    
    
    CAN_SendMsg(&claim);
    
}
void getTempsOne(){
    CAN_TX_MSG claim;
    CAN_DATA_BYTES_MSG claimData;
    
    claim.id = 0x18dd2516;
    claim.ide = 1u;
    claim.dlc = 8u;
    claim.rtr = 0u;
    claim.irq = 0u;
    claim.msg = &claimData;
    claimData.byte[0] = 0x01;
    claimData.byte[1] = 0x00;
    claimData.byte[2] = 0x90;
    claimData.byte[3] = 0x0F;
    claimData.byte[4] = 0x10;
    claimData.byte[5] = 0x27;
    claimData.byte[6] = 0x00;
    claimData.byte[7] = 0x00;
    
    CAN_SendMsg(&claim);
    
}
void getTempsTwo(){
    CAN_TX_MSG claim;
    CAN_DATA_BYTES_MSG claimData;
    
    claim.id = 0x18dd2816;
    claim.ide = 1u;
    claim.dlc = 8u;
    claim.rtr = 0u;
    claim.irq = 0u;
    claim.msg = &claimData;
    claimData.byte[0] = 0x01;
    claimData.byte[1] = 0x00;
    claimData.byte[2] = 0x90;
    claimData.byte[3] = 0x0F;
    claimData.byte[4] = 0x10;
    claimData.byte[5] = 0x27;
    claimData.byte[6] = 0x00;
    claimData.byte[7] = 0x00;
    
    CAN_SendMsg(&claim);    
}
void cancelBalance(){
    
}
void startBalance(){
    
}
/* [] END OF FILE */

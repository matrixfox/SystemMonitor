//
//  main.m
//  SystemMonitor
//
//  Created by Andrea on 28/02/14.
//  Copyright (c) 2014 Andrea De Martino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "smc.h"
#import <IOKit/IOKitLib.h>

int main(int argc, const char * argv[])
{
        SMCOpen();
        printf("CPU Temperature %0.1f°C\n", SMCGetTemperature(SMC_KEY_CPU_TEMP));
        printf("Fan Speed %drpm\n", SMCGetFanRpm(SMC_KEY_FAN0_RPM_CUR));
        SMCClose();
        
        return 0;
}


//
//  LSILog.m
//  ObjC-Fundamentals-I-PaulSolt
//
//  Created by Craig Swanson on 3/29/20.
//  Copyright © 2020 craigswanson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSILog.h"

void LSILog(NSString *format, ...) {
    va_list args;
    va_start(args, format);
    NSString *stringWithNewline = [format stringByAppendingString:@"\n"];
    NSString *formattedString = [[NSString alloc] initWithFormat:stringWithNewline arguments:args];
    va_end(args);
    [[NSFileHandle fileHandleWithStandardOutput]
     writeData:[formattedString dataUsingEncoding:NSUTF8StringEncoding]];
}

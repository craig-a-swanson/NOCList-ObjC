//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Craig Swanson on 3/30/20.
//  Copyright © 2020 craigswanson. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithString:(NSString *)coverName realName:(NSString *)realName accessLevel:(NSNumber *)accessLevel compromised:(NSNumber *)compromised {
    self = [super init];
    if (self) {
        
        _coverName = coverName;
        _realName = realName;
        _accessLevel = accessLevel;
        _compromised = compromised;
    }
    return self;
}

@end

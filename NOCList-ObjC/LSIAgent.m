//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Craig Swanson on 3/30/20.
//  Copyright © 2020 craigswanson. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype)initWithString:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised {
    self = [super init];
    if (self) {
        
        _coverName = coverName;
        _realName = realName;
        _accessLevel = [NSNumber numberWithInt:accessLevel];
        _compromised = [NSNumber numberWithBool:compromised];
    }
    return self;
}

- (void)compromisedAgents:(NSArray *)nocList {
    int counter = 0;
    for (LSIAgent *agent in nocList) {
        if ([agent compromised] == [NSNumber numberWithBool:YES]) {
            counter++;
        }
    }
    NSLog(@"There are %i compromised agents", counter);
}

- (void)cleanAgents:(NSArray *)nocList {
    
}

- (void)highRiskAgents:(NSArray *)nocList {
    
}

- (void)agentsByAccessLevel:(NSArray *)nocList {
    
}


@end

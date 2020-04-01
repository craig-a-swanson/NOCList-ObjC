//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Craig Swanson on 3/30/20.
//  Copyright © 2020 craigswanson. All rights reserved.
//

#import "LSIAgent.h"
#import "LSILog.h"

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
    NSLog(@"There are %i compromised agents.", counter);
}

- (void)cleanAgents:(NSArray *)nocList {
    int counter = 0;
    for (LSIAgent *agent in nocList) {
        if ([agent compromised] == [NSNumber numberWithBool:NO]) {
            counter++;
            NSLog(@"Agent %@ is clean.", [agent coverName]);
        }
    }
    NSLog(@"There are %i clean agents.", counter);
}

- (void)highRiskAgents:(NSArray *)nocList {
    for (LSIAgent *agent in nocList) {
        if ([[agent accessLevel] isGreaterThanOrEqualTo:[NSNumber numberWithInt:8]]) {
            if ([agent compromised] == [NSNumber numberWithBool:YES]) {
                NSLog(@"%@, level: %@ **WARNING** **COMPROMISED**", [agent realName], [agent accessLevel]);
            } else {
                NSLog(@"%@, level: %@", [agent realName], [agent accessLevel]);
            }
        }
    }
}

- (void)agentsByAccessLevel:(NSArray *)nocList {
    int lowCount = 0;
    int midCount = 0;
    int highCount = 0;
    for (LSIAgent *agent in nocList) {
        if ([[agent accessLevel] isLessThanOrEqualTo:[NSNumber numberWithInt:4]]) {
            lowCount++;
        } else if ([[agent accessLevel] isLessThanOrEqualTo:[NSNumber numberWithInt:7]]) {
            midCount++;
        } else {
            highCount++;
        }
    }
    NSLog(@"%i low level agents, %i mid level agents, and %i high level agents.", lowCount, midCount, highCount);
}


@end

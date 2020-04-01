//
//  main.m
//  NOCList-ObjC
//
//  Created by Craig Swanson on 3/30/20.
//  Copyright © 2020 craigswanson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"
#import "LSILog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *eHunt = [[LSIAgent alloc] initWithString:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO];
        LSIAgent *jPhelps = [[LSIAgent alloc] initWithString:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:YES];
        LSIAgent *cPhelps = [[LSIAgent alloc] initWithString:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];
        LSIAgent *eKittridge = [[LSIAgent alloc] initWithString:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:YES];
        LSIAgent *fKrieger = [[LSIAgent alloc] initWithString:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];
        LSIAgent *lStickell = [[LSIAgent alloc] initWithString:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:NO];
        LSIAgent *sDavies = [[LSIAgent alloc] initWithString:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:YES];
        LSIAgent *mRotGrab = [[LSIAgent alloc] initWithString:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO];
        LSIAgent *hWilliams = [[LSIAgent alloc] initWithString:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised:YES];
        LSIAgent *jHarmon = [[LSIAgent alloc] initWithString:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES];
        LSIAgent *fBarnes = [[LSIAgent alloc] initWithString:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO];
        
        NSArray *nocList = @[eHunt,
                             jPhelps,
                             cPhelps,
                             eKittridge,
                             fKrieger,
                             lStickell,
                             sDavies,
                             mRotGrab,
                             hWilliams,
                             jHarmon,
                             fBarnes];
        
        LSIAgent *classInstance = [LSIAgent new];
        [classInstance compromisedAgents:nocList];
        [classInstance cleanAgents:nocList];
        [classInstance highRiskAgents:nocList];
        [classInstance agentsByAccessLevel:nocList];
        [classInstance agentSummary:nocList];
        
    }
    return 0;
}

//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by Craig Swanson on 3/30/20.
//  Copyright © 2020 craigswanson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property NSString *coverName;
@property NSString *realName;
@property NSNumber *accessLevel;
@property NSNumber *compromised;

- (instancetype)initWithString:(NSString *)coverName realName:(NSString *)realName accessLevel:(NSNumber *)accessLevel compromised:(NSNumber *)compromised;




@end

NS_ASSUME_NONNULL_END

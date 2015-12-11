//
//  CLQGroupServices.h
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/8/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReactiveCocoa.h"
#import "CLQGroupInvitation.h"
#import "CLQUser.h"
#import "CLQGroup.h"

@interface CLQGroupServices : NSObject


- (RACSignal *)acceptGroupInvitation:(CLQGroupInvitation *)invitation;


- (RACSignal *)excludeMember:(CLQUser *)member
                   fromGroup:(CLQGroup *)group;

- (RACSignal *)appointAdministrator:(CLQUser *)member
                           forGroup:(CLQGroup *)group;

- (RACSignal *)depriveAdministrator:(CLQUser *)member
                           forGroup:(CLQGroup *)group;

@end

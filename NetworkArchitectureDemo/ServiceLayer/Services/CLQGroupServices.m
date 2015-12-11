//
//  CLQGroupServices.m
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/8/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import "CLQGroupServices.h"

@implementation CLQGroupServices

//TO DO

- (RACSignal *)acceptGroupInvitation:(CLQGroupInvitation *)invitation {

    return [RACSignal empty];

}

- (RACSignal *)favouriteGroups
{

    return [RACSignal empty];
}

- (RACSignal *)myGroups
{

    return [RACSignal empty];
}

- (RACSignal *)excludeMember:(CLQUser *)member
                   fromGroup:(CLQGroup *)group

{

    return [RACSignal empty];
}

- (RACSignal *)appointAdministrator:(CLQUser *)member
                           forGroup:(CLQGroup *)group
{
    return [RACSignal empty];
}

- (RACSignal *)depriveAdministrator:(CLQUser *)member
                           forGroup:(CLQGroup *)group
{
    return [RACSignal empty];
}


@end

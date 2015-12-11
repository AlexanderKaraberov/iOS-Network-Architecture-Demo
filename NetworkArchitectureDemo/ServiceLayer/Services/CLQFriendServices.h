//
//  CLQFriendServices.h
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/11/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReactiveCocoa.h"
#import "CLQUser.h"
#import "CLQJoinRequest.h"

@interface CLQFriendServices : NSObject

- (RACSignal *)friendsRequestsList;

- (RACSignal *)sendFriendRequestToUser:(CLQUser *)user;

- (RACSignal *)approveFriendRequest:(CLQJoinRequest *)request;


@end

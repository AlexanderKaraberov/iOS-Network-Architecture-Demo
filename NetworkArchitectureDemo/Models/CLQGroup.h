//
//  CQLGroup.h
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/8/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLQEntity.h"
#import "ReactiveCocoa.h"

@class CLQGroupBuilder;
typedef void (^CLQGroupBuilderBlock)(CLQGroupBuilder *builder);


@interface CLQGroup : CLQEntity

@property (nonatomic, copy, readonly) NSNumber *maxMembers;
@property (nonatomic, copy, readonly) NSNumber *minVotesNeeded;
@property (nonatomic, copy, readonly) NSString *status;
@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, copy, readonly) NSString *address;

/**
 Retrieve info about the group from remote service
 */
- (RACSignal *)getFullGroupInfo;


- (RACSignal *)leaveGroup;


/**
 Convinient group initializer using for creating new group
 with Builder patter
 **/
+ (instancetype)groupWithBlock:(CLQGroupBuilderBlock)block;


/**
 *Update group extra settings 
 @param maxMembers - maximum nuber of members in the group
 
 @param minVotes - minimal required number of votes from group users
 to include new user.
 */
- (void)updateMaxMembers:(NSNumber *)maxMembers minVotesNeeded:(NSNumber *)minVotes;

/**
 *Internal builder method don't use explicitly
 */
- (instancetype)initWithBuilder:(CLQGroupBuilder *)builder;

@end

//Builder for the group
@interface CLQGroupBuilder : NSObject

@property (nonatomic, copy) NSNumber *maxMembers;
@property (nonatomic, copy) NSNumber *minVotesNeeded;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *address;

- (CLQGroup *)build;

@end

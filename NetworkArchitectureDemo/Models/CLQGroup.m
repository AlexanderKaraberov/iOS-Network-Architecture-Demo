//
//  CQLGroup.m
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/8/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import "CLQGroup.h"

@implementation CLQGroupBuilder

- (CLQGroup *)build {
    return [[CLQGroup alloc] initWithBuilder:self];
}

@end

@implementation CLQGroup

+ (instancetype)groupWithBlock:(CLQGroupBuilderBlock)block {
    NSParameterAssert(block);
    CLQGroupBuilder *builder = [CLQGroupBuilder new];
    block(builder);
    return [builder build];
}

+ (NSDateFormatter *)dateFormatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    return dateFormatter;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"maxMembers"   : @"max_members",
             @"minVotesNeeded" : @"min_votes_needed",
             };
}


- (instancetype)initWithBuilder:(CLQGroupBuilder *)builder {
    
    self = [super init];
    if (self) {
        
        _maxMembers = builder.maxMembers;
        _minVotesNeeded = builder.minVotesNeeded;
        _status = builder.status;
        _title = builder.title;
        _address = builder.address;
    }
    return self;
}


- (void)updateMaxMembers:(NSNumber *)maxMembers minVotesNeeded:(NSNumber *)minVotes {
    _maxMembers = maxMembers;
    _minVotesNeeded = minVotes;
}

//STUB implementations for now :(

- (RACSignal *)getFullGroupInfo {
    
    return [RACSignal empty];
}

- (RACSignal *)leaveGroup {
    
    return [RACSignal empty];
}

@end

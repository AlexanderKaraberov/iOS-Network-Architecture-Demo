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

@interface CLQGroup : CLQEntity

- (RACSignal *)getFullGroupInfo;

- (RACSignal *)leaveGroup;


@end

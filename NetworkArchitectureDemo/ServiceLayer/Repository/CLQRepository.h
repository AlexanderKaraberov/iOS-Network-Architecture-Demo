//
//  CLQRepository.h
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/11/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReactiveCocoa.h"
#import "CLQEntity.h"
#import "CLQSearchCriteria.h"

@protocol CLQRepository <NSObject>

//Also you can add insert/update methods here

- (RACSignal *)remove:(CLQEntity * const)entity;

- (RACSignal *)getWithCriteria:(CLQSearchCriteria * const)criteria;

- (RACSignal *)getAll;

@end

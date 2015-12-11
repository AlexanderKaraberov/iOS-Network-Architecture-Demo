//
//  FriendSearchCriteria.h
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/11/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    
    SortingTypeNone,
    SortingTypeNearMe,
    SortingTypeAZ,
    SortingTypeZA
    
} ListSortingType;


@interface CLQSearchCriteria : NSObject

@property (nonatomic, copy) NSNumber *rangeTo;
@property (nonatomic, copy) NSNumber *rangeFrom;
@property (nonatomic, assign) BOOL enableSearchByDistance;
@property (nonatomic, assign) ListSortingType sortingType;

@end

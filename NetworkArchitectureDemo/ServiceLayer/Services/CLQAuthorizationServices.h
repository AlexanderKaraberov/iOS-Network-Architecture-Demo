//
//  AuthorizationServices.h
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/8/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReactiveCocoa.h"
#import "CLQAPIClient.h"

@interface CLQAuthorizationServices : NSObject

- (instancetype)initWithAPIClient:(CLQAPIClient *)client;
 
- (RACSignal *)loginUserWithСredentials:(NSURLCredential * const)credentials;


@end

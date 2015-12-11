//
//  AuthorizationServices.m
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/8/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import "CLQAuthorizationServices.h"
#import "Mantle.h"
#import "CLQUser.h"

@interface CLQAuthorizationServices ()

@property (nonatomic, strong, readonly) CLQAPIClient *client;

@end


@implementation CLQAuthorizationServices

- (instancetype)initWithAPIClient:(CLQAPIClient *)client {

    if (self = [super init]) {
        _client = client;
    }
    return self;
}

- (RACSignal *)loginUserWithСredentials:(NSURLCredential * const)credentials {

    NSString * const resourseURI = @"users/login";
    
    __block NSURLSessionDataTask *task;
    
    return [[RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        
        NSDictionary * const requestParameters = @{
                                                   @"email"    : credentials.user,
                                                   @"password" : credentials.password
                                                  };

        task = [self.client GET: resourseURI
                        parameters:requestParameters
                           success:^(NSURLSessionDataTask *task, id responseObject) {
         
                               NSError *error;
                               CLQUser * const user = [MTLJSONAdapter modelOfClass:CLQUser.class
                                                          fromJSONDictionary:responseObject
                                                                       error:&error];
                              
                               [subscriber sendNext:user];

                           } failure:^(NSURLSessionDataTask *task, NSError *error) {
                               
                              [subscriber sendError:error];
                           }];
        return [RACDisposable disposableWithBlock:^{
            [task cancel];
        }];
    }] replayLazily];

}

@end

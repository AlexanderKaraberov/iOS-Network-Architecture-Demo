//
//  CLQAPIClient.m
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/11/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import "CLQAPIClient.h"

typedef enum : NSUInteger {
    
    HTTPResponseCodeOperationSuccessful = 200,
    HTTPResponseCodeBadRequest = 400,
    HTTPResponseCodeUnauthorized = 401,
    HTTPResponseCodeAuthorizationFailed = 403,
    HTTPResponseCodeNotFound = 404,
    HTTPResponseCodeMethodNotAllowed = 405,
    HTTPResponseCodeDataValidationFailed = 422,
    HTTPResponseCodeInternalServerError = 500
    
} HTTPResponseCode;


@implementation CLQAPIClient

static NSString * const kBaseUrl = @"http://cliqi.devk.itechcraft.com:80/api/v1/";
static NSString * const kCliQiApiErrorDomain = @"com.itcraft.cliqi.ios.api.error";
static NSString * const kCliQiApiSecureKey = @"12345";
static NSString * const kCliQiApiSecureHeaderName = @"Api_key";

- (instancetype)init
{
    
    if (self = [super init]) {
        
        NSURL * const baseURL = [NSURL URLWithString:kBaseUrl];
        
        [self.reachabilityManager startMonitoring];
        
        NSURLSessionConfiguration * const sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
        
        self = [[CLQAPIClient alloc] initWithBaseURL:baseURL
                                sessionConfiguration:sessionConfiguration];
        
        self.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        self.requestSerializer = [AFJSONRequestSerializer serializer];
        self.responseSerializer = [AFJSONResponseSerializer serializer];
        
        [self.requestSerializer setValue:kCliQiApiSecureKey
                      forHTTPHeaderField:kCliQiApiSecureHeaderName];
    }
    
    return self;
}


- (BOOL)connected
{
    
    return self.reachabilityManager.reachable;
}

@end

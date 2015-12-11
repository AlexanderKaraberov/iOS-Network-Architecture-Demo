//
//  LoginViewController.h
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/8/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CLQAuthorizationServices;

@interface CLQLoginViewController : UIViewController

- (instancetype)initWithService:(CLQAuthorizationServices * const)service;

@end

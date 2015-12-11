//
//  LoginViewController.m
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/8/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import "CLQLoginViewController.h"
#import "CLQUserGroupsViewController.h"
#import "CLQAuthorizationServices.h"
#import "CLQSquareTextField.h"
#import "CLQUser.h"
#import "CLQUserFriendsViewController.h"
#import "CLQApplicationBootstrap.h"

@interface CLQLoginViewController ()

//IBOutlets
@property (weak, nonatomic) IBOutlet CLQSquareTextField *loginTextField;
@property (weak, nonatomic) IBOutlet CLQSquareTextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *signInButton;


@property (nonatomic, strong, readonly) CLQAuthorizationServices *service;

@end

@implementation CLQLoginViewController

- (instancetype)initWithService:(CLQAuthorizationServices * const)service {

    if (self = [super init]) {
        _service = service;
    }
    
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {

    [super viewDidAppear:animated];
    
    
    RAC(self.signInButton, enabled) =
    [RACSignal combineLatest:@[self.loginTextField.rac_textSignal,
                               self.passwordTextField.rac_textSignal]
     
                      reduce:^(NSString *username,
                               NSString *password) {
                          BOOL valid = (username.length > 0 && password.length > 0);
                          return @(valid);
                      }];
}


- (IBAction)loginUserAction:(UIButton *)sender {
    
    NSURLCredential * const userCredentials = [NSURLCredential credentialWithUser:self.loginTextField.text
                                                                         password:self.passwordTextField.text
                                                                      persistence:NSURLCredentialPersistenceNone];
    
    [[self.service loginUserWithСredentials:userCredentials]
     subscribeNext:^(id x) {
        
         [CLQApplicationBootstrap bootstrapApplicationWithWindow:self.view.window];
         
    } error:^(NSError *error) {
        NSLog(@"Error occurred: %@", error.localizedDescription);
    }];
}



@end

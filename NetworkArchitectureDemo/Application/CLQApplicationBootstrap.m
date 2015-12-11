//
//  CLQApplicationBootstrap.m
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/11/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import "CLQApplicationBootstrap.h"
#import "CLQUserFriendsViewController.h"
#import "CLQUserGroupsViewController.h"

@implementation CLQApplicationBootstrap

+ (void)bootstrapApplicationWithWindow:(UIWindow *)window {
    
    CLQUserGroupsViewController * const groupsController = [CLQUserGroupsViewController new];
    CLQUserFriendsViewController * const userFriends = [CLQUserFriendsViewController new];
    
    groupsController.tabBarItem.image = [UIImage imageNamed:@"tab_groups"];
    userFriends.tabBarItem.image = [UIImage imageNamed:@"tab_friends"];
    
    UITabBarController * const tabController = [UITabBarController new];
    tabController.viewControllers = @[groupsController, userFriends];
    
    window.rootViewController = tabController;
}

@end

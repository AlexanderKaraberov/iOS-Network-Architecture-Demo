//
//  GroupTableViewCell.h
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/8/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CLQGroup;

@interface GroupTableViewCell : UITableViewCell

- (void)updateForGroup:(CLQGroup *)group;


@end

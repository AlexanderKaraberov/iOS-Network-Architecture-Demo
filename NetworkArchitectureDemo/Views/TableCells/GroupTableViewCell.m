//
//  GroupTableViewCell.m
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/8/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import "GroupTableViewCell.h"

@interface GroupTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *groupNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *groupStatusLabel;
@property (weak, nonatomic) IBOutlet UILabel *tags;


@end

@implementation GroupTableViewCell



- (void)awakeFromNib
{
}


- (void)updateForGroup:(CLQGroup *)group
{

    self.groupNameLabel.text = @"The intrinsic content size is the size a view prefers to have for a specific content it displays. For example, UILabel has a preferred height based on the font, and a preferred width based on the font and the text it displays.";
    self.groupStatusLabel.text = @"The intrinsic content size is the size a view prefers to have for a specific content it displays. For example, UILabel has a preferred height based on the font, and a preferred width based on the font and the text it displays.";
    
}


@end

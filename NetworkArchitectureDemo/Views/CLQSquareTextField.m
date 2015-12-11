//
//  SquareTextField.m
//  CliQi
//
//  Created by Alexander on 1/30/15.
//  Copyright (c) 2015 ItCraft. All rights reserved.
//

#import "CLQSquareTextField.h"
#import  <QuartzCore/QuartzCore.h>

@implementation CLQSquareTextField

static CGFloat const kLeftRightMargin = 15.0f;

-(void)awakeFromNib {
    [super awakeFromNib];
    self.layer.borderWidth = 1.0f;
    self.layer.borderColor = [[UIColor colorWithRed:224/255.0f green:228/255.0f blue:230/255.0f alpha:1.0f] CGColor];
}

-(CGRect)textRectForBounds:(CGRect)bounds {
    return CGRectMake(kLeftRightMargin, bounds.origin.y, bounds.size.width  - kLeftRightMargin, bounds.size.height);
}

-(CGRect)editingRectForBounds:(CGRect)bounds {
    return CGRectMake(kLeftRightMargin, bounds.origin.y, bounds.size.width - kLeftRightMargin, bounds.size.height);
}

@end

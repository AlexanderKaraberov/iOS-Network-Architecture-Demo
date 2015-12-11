//
//  CLQUser.h
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/8/15.
//  Copyright © 2015 alexander. All rights reserved.
//


#import "ReactiveCocoa.h"
#import "CLQEntity.h"

typedef enum : NSUInteger {

    UserGenderMale = 1,
    UserGenderFemale
    
} UserGender;


typedef enum : NSUInteger {
    
    GroupRoleMember = 1,
    GroupRoleAdmin = 2
    
} GroupRole;



@interface CLQUser : CLQEntity

@property (nonatomic, copy, readonly) NSNumber *userId;
@property (nonatomic, copy, readonly) NSString *email;
@property (nonatomic, copy, readonly) NSString *accessToken;
@property (nonatomic, copy, readonly) NSString *firstName;
@property (nonatomic, copy, readonly) NSString *lastName;
@property (nonatomic, copy, readonly) NSNumber *countryId;
@property (nonatomic, copy, readonly) NSString *country;
@property (nonatomic, copy, readonly) NSString *countryAlpha3Code;
@property (nonatomic, copy, readonly) NSString *city;
@property (nonatomic, copy, readonly) NSString *zip;
@property (nonatomic, copy, readonly) NSString *address;
@property (nonatomic, copy, readonly) NSString *status;
@property (nonatomic, copy, readonly) NSString *job;
@property (nonatomic, copy, readonly) NSString *education;
@property (nonatomic, copy, readonly) NSString *birthDate;
@property (nonatomic, copy, readonly) NSString *yearsOld;
@property (nonatomic, copy, readonly) NSNumber *yearsOldId;
@property (nonatomic, copy, readonly) NSURL *userPicUrl;
@property (nonatomic, copy, readonly) UIImage *userImage;
@property (nonatomic, copy, readonly) NSDictionary *userpic;
@property (nonatomic, copy, readonly) NSString *groupMemberPictureUrl;
@property (nonatomic, copy, readonly) NSNumber *distance;
@property (nonatomic, assign, readonly) BOOL isFriend;
@property (nonatomic, assign, readonly) UserGender gender;
@property (nonatomic, assign, readonly) GroupRole role;


@end
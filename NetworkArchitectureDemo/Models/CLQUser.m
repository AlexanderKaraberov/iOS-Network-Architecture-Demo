//
//  CLQUser.m
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/8/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import "CLQUser.h"
//#import "CLQUserSession.h"


@implementation CLQUser

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"userId"     : @"id",
             @"accessToken": @"access_token",
             @"firstName"  : @"first_name",
             @"lastName"   : @"last_name",
             @"countryId"  : @"country_id",
             @"countryAlpha3Code": @"country_alpha3",
             @"birthDate"  : @"birth_date",
             @"yearsOld"   : @"years_old",
             @"yearsOldId" : @"years_old_id",
             @"userPicUrl" : @"userpic_url",
             @"userpic"    :@"userpic_data",
             @"groupMemberPictureUrl" : @"userpic",
             @"isFriend"   : @"is_friend"
             };
}

+ (NSValueTransformer *)userPicUrlJSONTransformer
{
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

- (NSDictionary *)dictionaryValue
{
    
    NSMutableDictionary *modifiedDictionaryValue = [[super dictionaryValue] mutableCopy];
    
    for (NSString * const originalKey in [super dictionaryValue]) {
        if ([self valueForKey:originalKey] == nil) {
            [modifiedDictionaryValue removeObjectForKey:originalKey];
        }
    }
    return [modifiedDictionaryValue copy];
}


@end

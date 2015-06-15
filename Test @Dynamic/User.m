//
//  User.m
//  Test @Dynamic
//
//  Created by Phil Cai on 15/6/15.
//  Copyright (c) 2015年 Phil Cai. All rights reserved.
//

#import "User.h"

@implementation User
@dynamic name,age,homePage;
+(instancetype)user{
    static User *u;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        u = [[self alloc] init];
    });
    return u;
}
@end

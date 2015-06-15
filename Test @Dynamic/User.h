//
//  User.h
//  Test @Dynamic
//
//  Created by Phil Cai on 15/6/15.
//  Copyright (c) 2015年 Phil Cai. All rights reserved.
//

#import "PHDynamicObject.h"

@interface User : PHDynamicObject
+ (instancetype) user;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSNumber *age;
@property (nonatomic, copy) NSString *homePage;
@end

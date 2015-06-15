//
//  Config.m
//  Test @Dynamic
//
//  Created by Phil Cai on 15/6/15.
//  Copyright (c) 2015年 Phil Cai. All rights reserved.
//

#import "Config.h"

@implementation Config
@dynamic s1,s2;
@dynamic a1,a2;
@dynamic n1,n2;
@dynamic d1,d2;
//@dynamic i1,i2;
+(instancetype)currentConfig{
    static Config *config;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        config = [[self alloc] init];
    });
    return config;
}
@end

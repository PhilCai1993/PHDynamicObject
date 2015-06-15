//
//  Config.h
//  Test @Dynamic
//
//  Created by Phil Cai on 15/6/15.
//  Copyright (c) 2015年 Phil Cai. All rights reserved.
//

#import "PHDynamicObject.h"

@interface Config : PHDynamicObject
+ (instancetype) currentConfig;
@property (nonatomic, copy) NSString *s1,*s2;
@property (nonatomic, copy) NSArray *a1,*a2;
@property (nonatomic, copy) NSNumber *n1,*n2;
@property (nonatomic, copy) NSDictionary *d1,*d2;
/**
 *  只支持对象:NSString,NSArray,NSNumber,NSDictionary
 */
//@property (nonatomic, assign) NSInteger i1,i2;
@end

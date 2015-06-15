//
//  ViewController.m
//  Test @Dynamic
//
//  Created by Phil Cai on 15/6/15.
//  Copyright (c) 2015年 Phil Cai. All rights reserved.
//

#import "ViewController.h"
#import "Config.h"
#import "User.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *debugTextView;
@end

@implementation ViewController
- (void)viewDidLoad{
    [super viewDidLoad];
}
#pragma mark - Config
- (IBAction)configSet:(id)sender {
    [Config currentConfig].s1 = @"string1~~~";
    [Config currentConfig].s2 = [NSString stringWithFormat:@"%@",[NSDate date]];
    
    [Config currentConfig].a1 = [NSArray arrayWithObjects:@"item1",@"item2", nil];
    [Config currentConfig].a2 = @[@"obj1",@"obj2",@"obj3",@"obj6",@"obj5",@"obj7"];
    
    [Config currentConfig].n1 = @(128);
    [Config currentConfig].n2 = [NSNumber numberWithFloat:30.333];
    
    [Config currentConfig].d1 = @{@"name":@"Phil",
                                  @"age":@21};
    [Config currentConfig].d2 = [NSDictionary dictionaryWithObjectsAndKeys:@"value1",@"key1",@"value2",@"key2",@"value3",@"key3", nil];
    [_debugTextView setText:[Config currentConfig].description];
    
}

- (IBAction)configGet:(id)sender {
    NSLog(@"%@",[Config currentConfig].description);
    
    NSLog(@"%@",[Config currentConfig].s1);
    NSLog(@"%@",[Config currentConfig].s2);
    
    NSLog(@"%@",[Config currentConfig].n1);
    NSLog(@"%@",[Config currentConfig].n2);
    
    NSLog(@"%@",[Config currentConfig].a1);
    NSLog(@"%@",[Config currentConfig].a2);
    
    NSLog(@"%@",[Config currentConfig].d1);
    NSLog(@"%@",[Config currentConfig].d2);
    [_debugTextView setText:[Config currentConfig].description];
}
- (IBAction)reset:(id)sender {
    [[Config currentConfig] resetAll];
    [_debugTextView setText:[Config currentConfig].description];
}
#pragma mark - User
- (IBAction)userSet:(id)sender {
    User *user = [User user];
    user.name = @"Phil";
    user.age = @(21);
    user.homePage = @"http://weibo.com/philcai";
//    user.name = nil;
//    user.url = [NSURL URLWithString:@"http://philcai.com"];
    [_debugTextView setText:[user description]];
//    NSLog(@"%@",user.url);
    
}
- (IBAction)userGet:(id)sender {
    NSLog(@"%@",[User user].description);
    [_debugTextView setText:[User user].description];
}
- (IBAction)user_reset:(id)sender {
    [[User user] resetAll];
    [_debugTextView setText:[User user].description];    
}



@end

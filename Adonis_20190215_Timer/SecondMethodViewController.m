//
//  SecondMethodViewController.m
//  Adonis_20190215_Timer
//
//  Created by Adonis_HongYang on 2019/2/15.
//  Copyright © 2019年 Nikoyo (China）Electronics Systems Co., Ltd. All rights reserved.
//

#import "SecondMethodViewController.h"
#import <objc/runtime.h>

@interface SecondMethodViewController ()
/** 计时器 */
@property (nonatomic, strong) NSTimer * timer;
/** 目标对象 */
@property (nonatomic, strong) id target;
@end

@implementation SecondMethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _target = [NSObject new];
    
    class_addMethod([_target class], @selector(startMethod), class_getMethodImplementation([self class], @selector(startMethod)), "v@:");
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:_target selector:@selector(startMethod) userInfo:nil repeats:YES];
    
}

#pragma mark - 析构
- (void)dealloc {
    [self.timer invalidate];
    self.timer = nil;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

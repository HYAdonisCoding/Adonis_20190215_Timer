//
//  ThirdMethodViewController.m
//  Adonis_20190215_Timer
//
//  Created by Adonis_HongYang on 2019/2/15.
//  Copyright © 2019年 Nikoyo (China）Electronics Systems Co., Ltd. All rights reserved.
//

#import "ThirdMethodViewController.h"
#import "HYProxy/HYProxy.h"

@interface ThirdMethodViewController ()
/** 计时器 */
@property (nonatomic, strong) NSTimer * timer;

/** <#Description#> */
@property (nonatomic, strong) HYProxy *proxy;
@end

@implementation ThirdMethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.proxy = [HYProxy alloc];
    
    self.proxy.target = self;
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self.proxy selector:@selector(startMethod) userInfo:nil repeats:YES];
}


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

//
//  FirstMethodViewController.m
//  Adonis_20190215_Timer
//
//  Created by Adonis_HongYang on 2019/2/15.
//  Copyright © 2019年 Nikoyo (China）Electronics Systems Co., Ltd. All rights reserved.
//

#import "FirstMethodViewController.h"

@interface FirstMethodViewController ()
/** 计时器 */
@property (nonatomic, strong) NSTimer * timer;
@end

@implementation FirstMethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(startMethod) userInfo:nil repeats:YES];
}

#pragma mark - 合适的时机销毁
- (void)didMoveToParentViewController:(UIViewController *)parent {
    if (!parent) {
        [self.timer invalidate];
        self.timer = nil;
    }
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

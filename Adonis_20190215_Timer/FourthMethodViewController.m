//
//  FourthMethodViewController.m
//  Adonis_20190215_Timer
//
//  Created by Adonis_HongYang on 2019/2/15.
//  Copyright © 2019年 Nikoyo (China）Electronics Systems Co., Ltd. All rights reserved.
//

#import "FourthMethodViewController.h"
#import "NSTimer+CustomTimer.h"

@interface FourthMethodViewController ()
/** 计时器 */
@property (nonatomic, strong) NSTimer * timer;
@end

@implementation FourthMethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    __weak typeof(self) weakSelf = self;
    
    self.timer = [NSTimer hy_scheduledTimerWithTimeInterval:1.0f repeats:YES block:^{
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf startMethod];
    }];
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

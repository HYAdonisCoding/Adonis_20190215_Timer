//
//  NSTimer+CustomTimer.m
//  Adonis_20190215_Timer
//
//  Created by Adonis_HongYang on 2019/2/15.
//  Copyright © 2019年 Nikoyo (China）Electronics Systems Co., Ltd. All rights reserved.
//

#import "NSTimer+CustomTimer.h"

@implementation NSTimer (CustomTimer)

+ (NSTimer *)hy_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(void))block {
    return [self scheduledTimerWithTimeInterval:interval target:self selector:@selector(hy_blockHandle:) userInfo:block repeats:repeats];
}

+ (void)hy_blockHandle:(NSTimer *)timer {
    void(^block)(void) = timer.userInfo;
    if (block) {
        block();
    }
}

@end

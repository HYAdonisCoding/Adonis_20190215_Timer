//
//  NSTimer+CustomTimer.h
//  Adonis_20190215_Timer
//
//  Created by Adonis_HongYang on 2019/2/15.
//  Copyright © 2019年 Nikoyo (China）Electronics Systems Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimer (CustomTimer)

+ (NSTimer *)hy_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(void))block;
@end

NS_ASSUME_NONNULL_END

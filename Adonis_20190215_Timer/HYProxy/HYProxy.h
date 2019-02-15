//
//  HYProxy.h
//  Adonis_20190215_Timer
//
//  Created by Adonis_HongYang on 2019/2/15.
//  Copyright © 2019年 Nikoyo (China）Electronics Systems Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HYProxy : NSProxy

/** 目标对象 */
@property (nonatomic, weak) id target;

@end

NS_ASSUME_NONNULL_END

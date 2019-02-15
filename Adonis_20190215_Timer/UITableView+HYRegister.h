//
//  UITableView+HYRegister.h
//  Adonis_20190213_MVP
//
//  Created by Adonis_HongYang on 2019/2/13.
//  Copyright © 2019年 Nikoyo (China）Electronics Systems Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (HYRegister)

/**
 注册cell
 
 @param className cell类名
 */
- (void)registerClass:(Class)className;


/**
 注册HeaderFooter
 
 @param className 类名
 */
- (void)registerHeaderFooterClass:(Class)className;

@end

NS_ASSUME_NONNULL_END

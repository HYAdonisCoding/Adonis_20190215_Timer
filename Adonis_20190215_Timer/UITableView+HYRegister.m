//
//  UITableView+HYRegister.m
//  Adonis_20190213_MVP
//
//  Created by Adonis_HongYang on 2019/2/13.
//  Copyright © 2019年 Nikoyo (China）Electronics Systems Co., Ltd. All rights reserved.
//

#import "UITableView+HYRegister.h"

@implementation UITableView (HYRegister)

- (void)registerClass:(Class)className {
    [self registerClass:className forCellReuseIdentifier:NSStringFromClass(className)];
}

- (void)registerHeaderFooterClass:(Class)className {
    [self registerClass:className forHeaderFooterViewReuseIdentifier:NSStringFromClass(className)];
}

@end

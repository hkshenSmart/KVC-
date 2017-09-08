//
//  Person.h
//  KVC集合运算符
//
//  Created by hkshen on 2017/9/8.
//  Copyright © 2017年 hkshen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

// 姓名
@property (nonatomic, copy) NSString *name;

// 年龄
@property (nonatomic, assign) NSInteger age;

// 设置属性变量方法
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age;

@end

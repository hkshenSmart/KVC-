//
//  Person.m
//  KVC集合运算符
//
//  Created by hkshen on 2017/9/8.
//  Copyright © 2017年 hkshen. All rights reserved.
//

#import "Person.h"

@implementation Person

//不写@synthesize name = _name的话，默认实例变量为_name
@synthesize name = _name;
@synthesize age = _age;

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age {
    
    if (self = [super init]) {
        _name = name;
        _age = age;
    }
    return self;
}

@end

//
//  ViewController.m
//  KVC集合运算符
//
//  Created by hkshen on 2017/9/8.
//  Copyright © 2017年 hkshen. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *person1 = [[Person alloc] initWithName:@"maozedong" age:99];
    Person *person2 = [[Person alloc] initWithName:@"maozedong" age:98];
    Person *person3 = [[Person alloc] initWithName:@"baoqingtian" age:97];
    Person *person4 = [[Person alloc] initWithName:@"qinshihuang" age:96];
    Person *person5 = [[Person alloc] initWithName:@"lishiming" age:95];
    Person *person6 = [[Person alloc] initWithName:@"kangxi" age:94];
    
    // 简单集合运算符不能用于单个对象中，一下写法crash
    //int oneAgeSum = [[person1 valueForKeyPath:@"@sum.age"] intValue];
    //NSLog(@"%d", oneAgeSum);
    
    NSArray *personArrayHK = @[person1, person2, person3, person4, person5, person6];
    // 简单集合运算符
    int personAgeAvg = [[personArrayHK valueForKeyPath:@"@avg.age"] intValue];
    int personAgeSum = [[personArrayHK valueForKeyPath:@"@sum.age"] intValue];
    int personAgeMax = [[personArrayHK valueForKeyPath:@"@max.age"] intValue];
    int personAgeMin = [[personArrayHK valueForKeyPath:@"@min.age"] intValue];
    int personAgeCount = [[personArrayHK valueForKeyPath:@"@count.age"] intValue];
    
    // 对象操作符：对数组对象进行操作
    NSArray<NSString *> *personNameArray1 = [personArrayHK valueForKeyPath:@"@unionOfObjects.name"]; // 不去重
    NSArray<NSString *> *personNameArray2 = [personArrayHK valueForKeyPath:@"@distinctUnionOfObjects.name"]; // 去重
    
    
    Person *person7 = [[Person alloc] initWithName:@"jiangzeming" age:96];
    Person *person8 = [[Person alloc] initWithName:@"jiangzeming" age:95];
    Person *person9 = [[Person alloc] initWithName:@"zhurongji" age:94];
    NSArray *personArrayWL = @[person7, person8, person9];
    // 数组/集体操作符：对由NSArray和NSSet所组成的集合操作
    // 需要两个数组组成一个数组
    NSArray *personNameArray3 = [@[personArrayHK, personArrayWL] valueForKeyPath:@"@unionOfArrays.name"]; // 不去重
    NSArray *personNameArray4 = [@[personArrayHK, personArrayWL] valueForKeyPath:@"@distinctUnionOfArrays.name"]; // 去重
    
    NSLog(@"personAgeAvg:%d", personAgeAvg);
    NSLog(@"personAgeSum:%d", personAgeSum);
    NSLog(@"personAgeMax:%d", personAgeMax);
    NSLog(@"personAgeMin:%d", personAgeMin);
    NSLog(@"personAgeCount:%d", personAgeCount);
    
    NSLog(@"personNameArray1:%@", personNameArray1);
    NSLog(@"personNameArray2:%@", personNameArray2);
    NSLog(@"personNameArray3:%@", personNameArray3);
    NSLog(@"personNameArray4:%@", personNameArray4);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

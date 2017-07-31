//
//  main.m
//  nsarray_Sort
//
//  Created by yg on 2017/7/31.
//  Copyright © 2017年 TBB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TBBEmployee.h"
//测试数组排序
void test1()
{
    TBBEmployee *e1 = [[TBBEmployee alloc]initWithName:@"张三" age:21 salary:6000];
    TBBEmployee *e2 = [[TBBEmployee alloc]initWithName:@"李四" age:21 salary:5000];
    TBBEmployee *e3 = [[TBBEmployee alloc]initWithName:@"王小二" age:20 salary:8000];
    TBBEmployee *e4 = [[TBBEmployee alloc]initWithName:@"王五" age:20 salary:7000];
    
    NSArray *emps = @[e1, e2, e3, e4];
    //key要的是参与排序的所有对象的某个属性的名字,如果参与排序的对象没有这个属性，排序会导致程序崩溃
    NSSortDescriptor *desc1 = [NSSortDescriptor sortDescriptorWithKey:@"age" ascending:YES];
    NSSortDescriptor *desc2 = [NSSortDescriptor sortDescriptorWithKey:@"salary" ascending:YES];
    //综合多个属性一起排序
    NSArray *sortedEmps = [emps sortedArrayUsingDescriptors:@[desc1, desc2]];
    
    for (TBBEmployee *e in sortedEmps) {
        NSLog(@"%@,%lu, %.2lf", e.name, e.age, e.salary);
    }
    
    
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test1();
    }
    return 0;
}

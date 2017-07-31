//
//  TBBEmployee.m
//  nsarray_Sort
//
//  Created by yg on 2017/7/31.
//  Copyright © 2017年 TBB. All rights reserved.
//

#import "TBBEmployee.h"

@implementation TBBEmployee
- (instancetype)initWithName:(NSString *)name
                         age:(NSUInteger)age
                      salary:(double)salary
{
    if (self = [super init]) {
        _name = name;
        _age = age;
        _salary = salary;
    }
    return self;
}
@end

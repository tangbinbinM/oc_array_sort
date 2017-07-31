//
//  TBBEmployee.h
//  nsarray_Sort
//
//  Created by yg on 2017/7/31.
//  Copyright © 2017年 TBB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TBBEmployee : NSObject
@property (nonatomic, copy)NSString *name;
@property (nonatomic)NSUInteger age;
@property (nonatomic)double salary;

- (instancetype)initWithName:(NSString *)name
                         age:(NSUInteger)age
                      salary:(double)salary;

@end

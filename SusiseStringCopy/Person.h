//
//  Person.h
//  SusiseStringCopy
//
//  Created by sunqiaoqiao on 2018/4/20.
//  Copyright © 2018年 S. All rights reserved.
//
/*
 若要实现拷贝功能，那么就遵循并实现拷贝协议
 */

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>

@property ( nonatomic,copy ) NSString *name;

@property ( nonatomic,assign ) NSInteger age;

- (instancetype ) initWithName:(NSString *)name age:(NSInteger )age;

+ (instancetype ) initWithName:(NSString *)name age:(NSInteger )age;



@end

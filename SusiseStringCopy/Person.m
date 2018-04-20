//
//  Person.m
//  SusiseStringCopy
//
//  Created by sunqiaoqiao on 2018/4/20.
//  Copyright © 2018年 S. All rights reserved.
//


#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age{
    if (self = [super init]) {
        _name = [name copy];
        
        _age = age;
    }
    return self;
}
+ (instancetype)initWithName:(NSString *)name age:(NSInteger)age{
    return [[self alloc] initWithName:name age:age];
}

- (id)copyWithZone:(NSZone *)zone{
    return [[[self class] allocWithZone:zone] initWithName:_name age:_age];
}

- (void)setName:(NSString *)name{
    _name = [name copy];//不太明白
}


@end

//
//  ViewController.m
//  SusiseStringCopy
//
//  Created by sunqiaoqiao on 2018/4/20.
//  Copyright © 2018年 S. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property ( nonatomic,copy ) NSString *str1;

@property ( nonatomic,strong ) NSString *str2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self test];
}

- (void)test{
    
    NSMutableString *str = [NSMutableString stringWithFormat:@"hello world"];
    self.str1 = str;
    self.str2 = str;
    
    NSLog(@"str:%p",str);//str:0x60400045c230
    
    NSLog(@"copy_str %p ",self.str1);//copy_str 0x604000433a40
    
    NSLog(@"strong_str %p ",self.str2);//strong_str 0x60400045c230
    
    // str 和str2 地址相同，和str1 地址不同，
    
    [str appendString:@" Susise"];
    
    NSLog(@"appendString --- %@",str);//appendString --- hello world Susise
    
    NSLog(@"appendString --- %@",self.str1);//appendString --- hello world
    
    NSLog(@"appendString --- %@",self.str2);//appendString --- hello world Susise
    
    //经过copy关键字修饰的str1并没有因为str的变化而变化，经过strong 修饰过的str2 却随着 str的改变而改变。一般强胯下，我们不希望字符串的值随着原值改变，所以我们一般用copy 修饰string属性。如果希望字符串的值跟着赋值的字符串的值变化，可以使用strong。
    
    //上面的轻局昂是针对NSMutableString赋值给NSString的时候 ，才会有不用，如果是赋值是NSString对象，那么使用copy还是strong，结果都是一样的。因为NSString对象根本就不能改变自身的值，他是不可变的。
    
    //strong，copy对引用计数的印象是一样的，都是会怎家内存引用计数的，都需要在最后做处理。
    
    //strong 浅拷贝 copy 深拷贝
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

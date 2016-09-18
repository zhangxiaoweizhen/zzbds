//
//  ViewController.m
//  正则表达式
//
//  Created by 非凡程序员 on 16/9/14.
//  Copyright © 2016年 非凡程序员. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
//对字符串操作的一种逻辑公式
//1.通过正则表达式可以检测给定的字符串是否符合我们定义的逻辑
//2.也可以从字符串中获取我们想要的特定部分
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString*phoneNUm=@"18735687878";
    //定义我们的规则
    NSString*regex=@"^1[3|4|5|7|8][0-9]{9}$";
    //谓词
    NSPredicate*predicate=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    //判断
    NSLog(@"%d",[predicate evaluateWithObject:phoneNUm]);
    
    
    
    
    //***********检测座机**************//
    
    NSString*tel=@"0359-5162018";
    NSString*regex1=@"^\\d{3,4}-\\d{7,8}$";
    NSPredicate*predicate1=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex1];
    //判断
    NSLog(@"%d",[predicate1 evaluateWithObject:tel]);
    
    
    //************身份证号*************//
    NSString*tel2=@"142703199303032730";
    NSString *regex2=@"^\\d{6}[1|2][0|1|9]\\d{2}[0|1]\\d{1}[0|1|2|3]\\d{1}\\d{3}[\\d{1}|x|X]";
    NSPredicate*predicate2=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    //判断
    NSLog(@"%d",[predicate2 evaluateWithObject:tel2]);
    
    
    
    //**************邮箱************//
    NSString*youxiang=@"95gjhgjhg52@qq.com";
    NSString*guize=@"^([0-9a-zA-Z|_]+)@([0-9a-zA-Z]+).[a-zA-Z]{2,3}$";
    NSPredicate*predicate4=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",guize];
    //判断
    NSLog(@"%d",[predicate4 evaluateWithObject:youxiang]);
 
    
    
    
    
    
    //**************汉字**************//
    NSString*hanzi=@"我1";
    NSString*regex3=@"^[\u4e00-\u9fa5]{0,}$";
    NSPredicate*predicate3=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex3];
        //判断
        NSLog(@"%d",[predicate3 evaluateWithObject:hanzi]);
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

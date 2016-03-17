//
//  ViewController.m
//  UITextFiled
//
//  Created by 曹丰 on 15/7/30.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    //UITextField:UIView
    //UITextField 输入框视图；
    
    UITextField *textFiled=[[UITextField alloc]initWithFrame:CGRectMake(50,50, 200, 30)];
   
    
    
    
    
    
    textFiled.borderStyle=UITextBorderStyleLine;
    
    textFiled.placeholder=@"hello";
    
    //如果模拟器键盘不出现，在模拟器-》Hardware->KeyBoard->connect Hard...
    
    //-----------------键盘的类型--------
    textFiled.keyboardType=UIKeyboardTypeEmailAddress;
    //键盘样式，有深色，浅色
    textFiled.keyboardAppearance=UIKeyboardAppearanceDark;
   
    //密码输入
//    textFiled.secureTextEntry=YES;
    
    //再次编写的时候是否清空输入框；
    textFiled.clearsOnBeginEditing=NO;
   
    //对齐方式
    textFiled.textAlignment=NSTextAlignmentRight;
    
    //设置字体
    textFiled.font=[UIFont systemFontOfSize:30];
    
    //字体大小根据textFiled自动调整
    textFiled.adjustsFontSizeToFitWidth=YES;
    
    //设置最小字体
    textFiled.minimumFontSize=20;
    
    //return键类型；
    textFiled.returnKeyType=UIReturnKeyGo;
    
    //清理模式
    textFiled.clearButtonMode=UITextFieldViewModeAlways;
    
    
    //因为我们不知道用户输入了什么内容，什么时候结束编辑
    //就只能通过代理来获取输入的内容，结束的时机等等；
    textFiled.delegate=self;
    
    
    [self.view addSubview:textFiled];
    
    
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(finish)];
    [self.view addGestureRecognizer:tap];
}
-(void)finish
{
    
    //结束self.view之上所有地编辑操作
    
    
    //1.第一种结束编辑方式；
    
    [self.view endEditing:YES];
    
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma  mark -UITextFieldDelegate


// 是否允许编辑   如否是NO就是不让输入；

//textField.text 渠道输入框的文字

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if(textField.text.length >=6)
    {
        
    
    return NO;

    }
    return YES;
    }
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"textFieldDidBeginEditing 已经开始编辑");
}
-(void)textFieldDidEndEditing:(UITextField *)textField

{
    NSLog(@"textFieldDidBeginEditing 已经结束编辑");

}
//是否允许开始编辑

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
        //如果返回NO，无法编辑，键盘都不能弹出
    return YES;
}
//是否允许清空，点击‘x'，无法删除

-(BOOL)textFieldShouldClear:(UITextField *)textField
{
    return YES;
}

//是否允许结束编辑
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    //返回NO，无法结束编辑，键盘也不能收起；
    return YES;
}
//是否可以点击return按钮
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //结束编辑的方式
    //让键盘丢失焦点，键盘掉下，结束编辑
    [textField resignFirstResponder];
    return YES;
}








@end

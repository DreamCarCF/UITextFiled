//
//  ViewController.m
//  8.UITextFiled
//
//  Created by liuyuecheng on 15/7/30.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //UITextField :UIView
    //UITextField  输入框视图
    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(50, 50, 200, 30)];
    //边框样式
    //UITextBorderStyleNone,       无边框
    //UITextBorderStyleLine,       线框
    //UITextBorderStyleBezel,      灰边框
    //UITextBorderStyleRoundedRect 带有圆角的边框
    textField.borderStyle = UITextBorderStyleRoundedRect;
    
    //默认提示文字
    textField.placeholder = @"hello";
    
    //如果模拟器键盘不出现,在模拟器->Hardware->keyBoard->connect Hardware keyBoard去掉勾选
    
    //键盘类型
    //有数字键盘,邮件键盘
    textField.keyboardType = UIKeyboardTypeEmailAddress;
    
    //键盘样式,有深色,浅色
    textField.keyboardAppearance = UIKeyboardAppearanceDark;
    
    //密码输入
//    textField.secureTextEntry = YES;
    
    //再次输入时,是否清空输入框
    textField.clearsOnBeginEditing = NO;
    
    //对齐方式
    textField.textAlignment = NSTextAlignmentRight;
    
    //设置字体
    textField.font = [UIFont systemFontOfSize:30];
    
    //字体大小根据textField自动调整
    textField.adjustsFontSizeToFitWidth = YES;
    
    //设置最小字体
    textField.minimumFontSize = 20;
    
    //return键类型
    textField.returnKeyType = UIReturnKeyGo;
    
    //清理模式
    //UITextFieldViewModeNever,         //没有"x"
    //UITextFieldViewModeWhileEditing,  //编辑的时候,'x'出现
    //UITextFieldViewModeUnlessEditing, //不编辑的时候,'x'出现
    //UITextFieldViewModeAlways         //不管遍不编辑,都有'x'
    textField.clearButtonMode = UITextFieldViewModeAlways;
    
    //因为我们不知道用户输入了什么内容,什么时候结束编辑.
    //就只能通过代理来获取输入的内容,结束的时机等等
    textField.delegate = self;
    
    [self.view addSubview:textField];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(finish)];
    [self.view addGestureRecognizer:tap];
}
- (void)finish
{
    //结束self.view之上所有的编辑操作
    //1.第一种结束编辑方式
    [self.view endEditing:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -UITextFieldDelegate
//是否允许编辑,不允许输入
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    //限制输入位数
    //textField.text  取到输入框的文字
    if (textField.text.length >=6) {
        return NO;
    }
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"textFieldDidBeginEditing,输入框已经开始编辑");
}
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"textFieldDidEndEditing,输入框已经结束编辑");
}
//是否允许开始编辑
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    //如果返回NO,无法编辑.键盘都不能弹出
    return YES;
}
//是否允许清空输入空.点击'x',无法删除
- (BOOL)textFieldShouldClear:(UITextField *)textField
{
    return YES;
}
//是否允许结束编辑
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    //返回NO,无法结束编辑.键盘也不能收起
    return YES;
}

//是否可以点击return按钮
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //2.结束编辑的方式
    //让键盘丢失焦点,键盘掉下,结束编辑
    [textField resignFirstResponder];
    
    //获取输入的字符
    NSLog(@"text==%@",textField.text);
    return YES;
}
@end

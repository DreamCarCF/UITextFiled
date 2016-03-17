//
//  RootViewController.m
//  EnterWithNameAndParess
//
//  Created by 曹丰 on 15/7/30.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "RootViewController.h"
#import "NextViewController.h"
#import "SuccessViewController.h"
@interface RootViewController ()<UITextFieldDelegate>

{
    UITextField *_textField1;
    UITextField *_textField2;
}
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor grayColor];
    
    
    
   _textField1=[[UITextField alloc]initWithFrame:CGRectMake(60, 40, 200, 40)];
    
    _textField1.backgroundColor=[UIColor cyanColor];
    _textField1.borderStyle=UITextBorderStyleRoundedRect;
    _textField1.placeholder=@"请输入用户名";
    _textField1.keyboardType=UIKeyboardTypeDefault;
    _textField1.clearButtonMode=UITextFieldViewModeAlways;
    [self.view addSubview:_textField1];
    _textField1.delegate=self;
    _textField2=[[UITextField alloc]initWithFrame:CGRectMake(60, 100, 200, 40)];
    
    _textField2.backgroundColor=[UIColor cyanColor];
    _textField2.borderStyle=UITextBorderStyleRoundedRect;
    _textField2.placeholder=@"请输入密码";
    _textField2.keyboardType=UIKeyboardTypeDefault;
    _textField2.clearButtonMode=UITextFieldViewModeAlways;
    _textField2.secureTextEntry=YES;
    [self.view addSubview:_textField2];
    _textField2.delegate=self;
    
//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(finish:)];
//    [self.view addGestureRecognizer:tap];
    
    
    
    UIButton *button1=[UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame=CGRectMake(180, 140, 40, 30);
    button1.layer.borderWidth=2.0;
    button1.layer.cornerRadius=5;
    button1.backgroundColor=[UIColor whiteColor];
    [button1 setTitle:@"注册" forState:UIControlStateNormal];
    
    [button1 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
 
    [button1 addTarget:self action:@selector(finish:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button1];
    
    
    UIButton *button2=[UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame=CGRectMake(220, 140, 40, 30);
    button2.layer.borderWidth=2.0;
    button2.layer.cornerRadius=5;
    button2.backgroundColor=[UIColor whiteColor];
    [button2 setTitle:@"登陆" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(finish:) forControlEvents:UIControlEventTouchUpInside];
    [button2 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.view addSubview:button2];

//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(finish:)];
//    [self.view addGestureRecognizer:tap];
    

    
}







- (void)finish:(UIButton*)button
{
    //结束self.view之上所有的编辑操作
    //1.第一种结束编辑方式
    [self.view endEditing:YES];
    if ([button.currentTitle isEqualToString:@"注册"]) {
        NextViewController *nextVC=[[NextViewController alloc]init];
        nextVC._str1=_textField1.text;
        nextVC._str1=_textField2.text;
        nextVC.block = ^(NSString *string)
       {
           
            _textField1.text = string;
           NSLog(@"textField1===%@",_textField1);
        };
        nextVC.block1 = ^(NSString *string)
        {
                        _textField2.text = string;
            NSLog(@"textField1===%@",_textField2);

        };
        nextVC.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
        [self presentViewController:nextVC animated:YES completion:nil];
        
    }else if([button.currentTitle isEqualToString:@"登陆"])
    {
        SuccessViewController *successVC=[[SuccessViewController alloc]init];
        successVC.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;
        [self presentViewController:successVC animated:YES completion:nil];
    }
    
    
    
    
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //2.结束编辑的方式
    //让键盘丢失焦点,键盘掉下,结束编辑
    [textField resignFirstResponder];
    
    //获取输入的字符
    NSLog(@"text==%@",textField.text);
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

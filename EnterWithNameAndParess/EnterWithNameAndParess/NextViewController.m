//
//  NextViewController.m
//  EnterWithNameAndParess
//
//  Created by 曹丰 on 15/7/30.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()<UITextFieldDelegate>
{
    UITextField *_textField1;
    UITextField *_textField2;
}
@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor greenColor];
    _textField1=[[UITextField alloc]initWithFrame:CGRectMake(60, 40, 200, 40)];
    
    _textField1.backgroundColor=[UIColor cyanColor];
    _textField1.borderStyle=UITextBorderStyleRoundedRect;
    _textField1.placeholder=@"请输入用户名";
    _textField1.keyboardType=UIKeyboardTypeDefault;
    _textField1.clearButtonMode=UITextFieldViewModeAlways;
    _textField1.delegate=self;
    [self.view addSubview:_textField1];
    
    _textField2=[[UITextField alloc]initWithFrame:CGRectMake(60, 100, 200, 40)];
    
    _textField2.backgroundColor=[UIColor cyanColor];
    _textField2.borderStyle=UITextBorderStyleRoundedRect;
    _textField2.placeholder=@"请输入密码";
    _textField2.keyboardType=UIKeyboardTypeDefault;
    _textField2.clearButtonMode=UITextFieldViewModeAlways;
    _textField2.delegate=self;
    _textField2.secureTextEntry=NO;
    [self.view addSubview:_textField2];
    
    UIButton *button2=[UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame=CGRectMake(220, 140, 40, 30);
    button2.layer.borderWidth=2.0;
    button2.layer.cornerRadius=5;
    button2.backgroundColor=[UIColor whiteColor];
    [button2 setTitle:@"完成" forState:UIControlStateNormal];
    
    [button2 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];


    
}
-(void)back:(UIButton*)button
{
    [self.view endEditing:YES];
    
    if (_block)
    {
        //如果有block传递过来,再执行
        _block(_textField1.text);
        _block1(_textField2.text);
        /*
         ^(NSString *string)
         {
         //这里是block的赋值.
         //只有当block被调用的时候,这里的代码才会被执行
         _label.text = string;
         };
         */
    }
    NSLog(@"currentTitle==%@",button.currentTitle);
    [self dismissViewControllerAnimated:YES completion:nil];

}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
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

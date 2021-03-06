//
//  RootViewController.m
//  6.视图反向传值(block)
//
//  Created by liuyuecheng on 15/7/30.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "RootViewController.h"
#import "NextViewController.h"
@interface RootViewController ()
{
    UILabel *_label;//用来接收反向传回来的值
}
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //command + ~  切换两个xcode工程
    _label = [[UILabel alloc]initWithFrame:CGRectMake(50, 50, 100, 30)];
    _label.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_label];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(50, 100, 200, 30);
    [button setTitle:@"点击跳转下一个页面" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(skip) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

}
- (void)skip
{
    NextViewController *nextVC = [[NextViewController alloc]init];
    //页面跳转之前,传递block
    nextVC.block = ^(NSString *string)
    {
        //这里是block的赋值.
        //只有当block被调用的时候,这里的代码才会被执行
        _label.text = string;
    };
    [self presentViewController:nextVC animated:YES completion:nil];
    
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

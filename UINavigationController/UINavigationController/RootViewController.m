//
//  RootViewController.m
//  UINavigationController
//
//  Created by 曹丰 on 15/7/31.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor redColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(50, 100, 80, 30);
    [button setTitle:@"Push" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    


}
-(void)push
{
    SecondViewController *seconVC=[[SecondViewController alloc]init];
    
    //self  在减——方法中，代表本对象
    //self  在+加方法中，代表本类
    
    //self.navigationController      如果试图控制器在导航控制器中，则返回这个导航控制器，如果不在则返回nil；
    
    
    //取到导航控制器，执行入栈操作
    [self.navigationController pushViewController:seconVC animated:YES];
    
    
    
    
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

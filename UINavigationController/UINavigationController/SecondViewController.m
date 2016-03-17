//
//  SecondViewController.m
//  UINavigationController
//
//  Created by 曹丰 on 15/7/31.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //如果推出的视图控制器的·view的背景颜色为透明（ clearcolor），那么会点击 push 时会卡顿
    self.view.backgroundColor=[UIColor cyanColor];
    
    //视图控制器入栈（被推出），在左上角ios会自动生成“<back”
    //点击back即可完成出栈-----即退回操作---即切回上一级；
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(50, 150, 80, 30);
    [button setTitle:@"pop" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pop) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    
    
}

-(void)pop
{
    
    //出栈
    [self.navigationController popViewControllerAnimated:YES];
    
    
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

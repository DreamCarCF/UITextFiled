//
//  NextViewController.m
//  3.视图控制器切换
//
//  Created by liuyuecheng on 15/7/30.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"返回上一级页面" forState:UIControlStateNormal];
    button.frame = CGRectMake(50, 50, 200, 30);
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    //在这里访问name属性
    //1.通过getter方法来访问属性
    //self.name  需要先访问[self name]函数,再取name对象地址
    NSLog(@"self.name==%@",self.name);
    
    
    //2.直接访问该属性地址
    //直接取name对象地址
    NSLog(@"_name==%@",_name);
    
    //用来接参的属性,一定要写在.h文件中.
    //写在.m文件外界是无法访问的.
    
    //用一个label将传过来的数据,显示
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 100, 30)];
    label.text = _name;
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor redColor];
    [self.view addSubview:label];
}

- (void)buttonClick
{
    //返回
    [self dismissViewControllerAnimated:YES completion:nil];
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

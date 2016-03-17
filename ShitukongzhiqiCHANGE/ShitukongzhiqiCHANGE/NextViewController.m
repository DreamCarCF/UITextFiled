//
//  NextViewController.m
//  ShitukongzhiqiCHANGE
//
//  Created by 曹丰 on 15/7/30.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor= [UIColor cyanColor];
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"返回上一个页面" forState:UIControlStateNormal];
    button.frame=CGRectMake(50, 50, 200, 30);
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    //在这里访问，name属性
    //1. 通过getter方法来访问属性
    //   self.name  需要先访问【self name】函数，再去name对象地址
    NSLog(@"self.name== %@",self.name);
    
    
    
    //2.直接访问该属性的地址；
    //  直接去name对象地址
    NSLog(@"_name=%@",_name);
    //用一个label将传过来的数据显示
    
    
        UILabel *label=[[UILabel alloc]init];
     label.frame=CGRectMake(50, 100+40, 100, 30);
    label.text=_name;
        label.backgroundColor=[UIColor whiteColor];
    label.textAlignment=NSTextAlignmentCenter;
        [self.view addSubview:label];
    
}

-(void)buttonClick
{
    //谁推出返回谁；
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

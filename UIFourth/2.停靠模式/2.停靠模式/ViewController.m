//
//  ViewController.m
//  2.停靠模式
//
//  Created by liuyuecheng on 15/7/30.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //第一个父视图与子视图
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(50, 50, 200, 200)];
    view1.backgroundColor = [UIColor yellowColor];
    view1.tag = 100;
    [self.view addSubview:view1];
    
    UIView *sonView1 = [[UIView alloc]initWithFrame:CGRectMake(50, 50, 100, 100)];
    sonView1.backgroundColor = [UIColor redColor];
    [view1 addSubview:sonView1];
    
    //第二个父视图与子视图
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(50, 300, 200, 200)];
    view2.backgroundColor = [UIColor yellowColor];
    view2.tag = 101;
    [self.view addSubview:view2];
    
    UIView *sonView2 = [[UIView alloc]initWithFrame:CGRectMake(50, 50, 100, 100)];
    sonView2.backgroundColor = [UIColor redColor];
    [view2 addSubview:sonView2];
    
    
    //打开停靠模式
    //让父视图支持停靠模式
    view2.autoresizesSubviews = YES;
    
//设置子视图的停靠模式类型
//UIViewAutoresizingNone                   子视图不做任何操作
//UIViewAutoresizingFlexibleLeftMargin     自动修改子视图与父视图左边间距,来保证右侧间距不变
//UIViewAutoresizingFlexibleWidth          父视图宽度改变,子视图宽度也随之改变.来保证左右边距不变
//UIViewAutoresizingFlexibleRightMargin    自动修改子视图与父视图右边间距,来保证左侧间距不变
//UIViewAutoresizingFlexibleTopMargin      自动修改子视图与父视图上边间距,来保证下边间距不变
//UIViewAutoresizingFlexibleHeight         父视图高度改变,子视图高度也随之改变.来保证上下边距不变
//UIViewAutoresizingFlexibleBottomMargin   自动修改子视图与父视图下边间距,来保证上边间距不变
//停靠模式,可以叠加
    sonView2.autoresizingMask =  UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleLeftMargin |UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin| UIViewAutoresizingFlexibleBottomMargin;
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(50, 550, 80, 30);
    [button setTitle:@"缩小" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(getMini) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void)getMini
{
    UIView *view1 = [self.view viewWithTag:100];
    UIView *view2 = [self.view viewWithTag:101];
    
    //缩小
    
    //1.取到frame
    CGRect frame1 = view1.frame;
    
    //修改
    frame1.size.width -=10;
    frame1.size.height -=10;
    
    //设置回去
    view1.frame = frame1;
    
    
    CGRect frame2 = view2.frame;
    frame2.size.width -=10;
    frame2.size.height -=10;
    view2.frame = frame2;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

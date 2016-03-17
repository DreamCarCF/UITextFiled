//
//  RootViewController.m
//  3.视图控制器切换
//
//  Created by liuyuecheng on 15/7/30.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "RootViewController.h"
#import "NextViewController.h"
@interface RootViewController ()
{
    NSString *_string;
}
@end

@implementation RootViewController
//OC中手动调用构造方法

//默认的构造方法
- (instancetype)init
{
    self = [super init];
    if (self)
    {
        
    }
    return self;
}
//自定义的构造方法
- (instancetype)initWithString:(NSString *)str
{
    if (self = [super init])
    {
        _string = str;
        //在构造方法中,不能调用self.view.只能做数组,字典这些和UI无关的初始化操作
        //因为在构造方法调用self.view会触发viewDidLoad.这样会导致逻辑混乱
        
//        self.view.backgroundColor = [UIColor redColor];
        
//        NSLog(@"33333333");
    }
    return self;
}

//init之后,ios会自动初始化控制器所拥有的view(self.view).
//初始化完成,就会走到viewDidLoad

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //如果要初始化UI,要放到viewDidLoad里面来
    
    NSLog(@"_string==%@",_string);
    
//    self.view.backgroundColor = [UIColor yellowColor];
    if ([_string isEqualToString:@"yellow"]) {
        self.view.backgroundColor = [UIColor yellowColor];
    }else
    {
        self.view.backgroundColor = [UIColor blackColor];
    }
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"跳到下一个页面" forState:UIControlStateNormal];
    button.frame = CGRectMake(50, 50, 200, 30);
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
    for (int i=0; i<3; i++)
    {
        UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
        button1.frame = CGRectMake(50, 100+40*i, 100, 30);
        switch (i) {
            case 0:
                [button1 setTitle:@"iPhone" forState:UIControlStateNormal];
                break;
            case 1:
                [button1 setTitle:@"iMac" forState:UIControlStateNormal];
                break;
            case 2:
                [button1 setTitle:@"MacBookPro" forState:UIControlStateNormal];
                break;
                
            default:
                break;
        }
        //skip: 后面带的参数,谁调用我,我就把谁传过去
        //传递过去的对象,必须是添加了该事件的
        [button1 addTarget:self action:@selector(skip:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button1];
    }
    
}

- (void)skip:(UIButton *)button
{
    //正向传值,A->B,使用点语法(setter和getter)
    NextViewController *nextVC = [[NextViewController alloc]init];
    //访问nextVC的name属性,进行参数传递
    nextVC.name = button.currentTitle;
    
    //正常的页面跳转
    [self presentViewController:nextVC animated:YES completion:nil];
    
}

- (void)buttonClick
{
    NextViewController *nextVC = [[NextViewController alloc]init];
    //在跳转之前,设置切换风格
    //UIModalTransitionStyleCoverVertical = 0, //上下切换效果
    //UIModalTransitionStyleFlipHorizontal,    //翻转效果
    //UIModalTransitionStyleCrossDissolve,     //渐隐
    //UIModalTransitionStylePartialCurl        //翻页
    nextVC.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    
    //跳转
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

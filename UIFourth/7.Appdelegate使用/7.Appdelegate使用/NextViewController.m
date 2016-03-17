//
//  NextViewController.m
//  7.Appdelegate使用
//
//  Created by liuyuecheng on 15/7/30.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "NextViewController.h"
#import "AppDelegate.h"
@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    
    for (int i=0; i<4; i++)
    {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        button.frame = CGRectMake(50, 50+40*i, 200, 30);
        button.backgroundColor = [UIColor cyanColor];
        [button addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        
        switch (i) {
            case 0:
                [button setTitle:@"iPhone" forState:UIControlStateNormal];
                break;
            case 1:
                [button setTitle:@"iPad" forState:UIControlStateNormal];
                break;
            case 2:
                [button setTitle:@"iPod Touch" forState:UIControlStateNormal];
                break;
            case 3:
                [button setTitle:@"Apple Watch" forState:UIControlStateNormal];
                break;
                
            default:
                break;
        }
    }
}
- (void)back:(UIButton *)button
{
    NSLog(@"currentTitle==%@",button.currentTitle);
    
    //拿到应用程序对象,它是打一个单例
    //单例就是整个应用程序生命周期内,只实例化一次的对象
    //单例一般用+方法取得.一般以share,defalut这些打头
    UIApplication *app = [UIApplication sharedApplication];
    NSLog(@"nextVC.app==%@",app);
    
    //取到应用程序对象的代理
    AppDelegate *delegate = app.delegate;
    
    //在程序的任何一个地方,都可以对AppDelegate的属性进行读写
    delegate.name = button.currentTitle;
    
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

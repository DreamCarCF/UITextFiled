//
//  RootViewController.m
//  Appdelegate
//
//  Created by 曹丰 on 15/7/30.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "RootViewController.h"
#import "NextViewController.h"
#import "AppDelegate.h"
@interface RootViewController ()
{
    UILabel *_label;
}
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor yellowColor];
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(50, 50, 200, 30);
    [button setTitle:@"跳转下一个页面" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(skip) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    _label=[[UILabel alloc]initWithFrame:CGRectMake(50, 150, 200, 30)];
    _label.backgroundColor=[UIColor greenColor];
    [self.view addSubview:_label];
}


-(void)viewWillAppear:(BOOL)animated
{
    
    //每次视图即将出现，都去Appdelegate中取值
    UIApplication *app=[UIApplication sharedApplication];
    AppDelegate *delegate=app.delegate;
    _label.text=delegate.name;
    
    
    
    
    
    
    
    
}
-(void)skip
{
    
    NextViewController *nextVC=[[NextViewController alloc]init];
    [self presentViewController:nextVC animated:YES completion:nil];
    
    UIApplication *app=[UIApplication sharedApplication];
    NSLog(@"rootVC.app==%@",app);

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

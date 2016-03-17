//
//  SuccessViewController.m
//  EnterWithNameAndParess
//
//  Created by 曹丰 on 15/7/30.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "SuccessViewController.h"

@interface SuccessViewController ()

@end

@implementation SuccessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor yellowColor];
    UIButton *button2=[UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame=CGRectMake(87, 260, 200, 100);
    
    button2.layer.borderWidth=2.0;
    button2.layer.cornerRadius=5;
    button2.backgroundColor=[UIColor whiteColor];
    [button2 setTitle:@" 登陆成功！" forState:UIControlStateNormal];
    
    [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [button2 addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];

    
}
-(void)back
{
    
    
    
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

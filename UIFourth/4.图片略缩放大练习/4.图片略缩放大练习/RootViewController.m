//
//  RootViewController.m
//  4.图片略缩放大练习
//
//  Created by liuyuecheng on 15/7/30.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "RootViewController.h"
#import "NextViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    for (int i=0; i<2; i++)
    {
        for (int j=0; j<2; j++)
        {
            UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(70+j*125, 50+182.5*i, 115, 172.5)];
            NSUInteger number = (i*2+j)+1;
            imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",number]];
            [self.view addSubview:imgView];
            
            imgView.userInteractionEnabled = YES;
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
            [imgView addGestureRecognizer:tap];
            
            //打上tag,在点击的适合,可以区分
            imgView.tag = 100+number;
        }
    }
}
- (void)tap:(UITapGestureRecognizer *)tap
{
    NextViewController *nextVC = [[NextViewController alloc]init];
    //通过拿到点击的视图的tag值,传递过去
    nextVC.index = tap.view.tag - 100;
    nextVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
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

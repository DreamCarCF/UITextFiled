//
//  RootViewController.m
//  TwoViewController
//
//  Created by 曹丰 on 15/7/30.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "RootViewController.h"
#import "NextViewController.h"
@interface RootViewController ()
{
    NSInteger _number;
    
    BOOL _islarge;
    
}
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _number=1;
    for (int i=0; i<2; i++) {
        for (int j=0; j<2; j++) {
            UIImageView *imageView=[[UIImageView alloc]init];
        imageView.frame=CGRectMake(20+190*j, 20+190*i, 150, 150);
            int p=(j+1)+2*i;
            UIImage*image=[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",p]];
            imageView.image=image;
            imageView.userInteractionEnabled=YES;
            [self.view addSubview:imageView];
            UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClick:)];
            [imageView addGestureRecognizer:tap];
            imageView.tag=100+_number;
            _number++;
        }
    }

}
//-(void)tap:(UITapGestureRecognizer*)tap
//{
//
//    if (_islarge==NO) {
//        
//    
//    NextViewController *nextVC=[[NextViewController alloc]init];
//        [self presentViewController:nextVC animated:YES completion:nil];
//    }
//

-(void)tapClick:(UITapGestureRecognizer*)tap
{
    
    NextViewController *nextVC=[[NextViewController alloc]init];
    nextVC.modalTransitionStyle=UIModalTransitionStylePartialCurl;
    
    nextVC._oldFrame=tap.view.frame;
    nextVC._imagettt=tap.view;
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

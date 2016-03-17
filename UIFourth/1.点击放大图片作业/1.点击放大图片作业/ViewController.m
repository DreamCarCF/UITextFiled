//
//  ViewController.m
//  1.点击放大图片作业
//
//  Created by liuyuecheng on 15/7/30.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    CGRect _oldFrame;
    BOOL _isLarge;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //假若有一个变量,你需要在viewDidLoad之外使用到它,那这个变量适合做成成员
    
    
    for (int i=0; i<2; i++)
    {
        for (int j=0; j<2; j++)
        {
            UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(70+j*125, 50+182.5*i, 115, 172.5)];
            imgView.backgroundColor = [UIColor yellowColor];
            
            NSInteger number = (i*2+j)+1;
            imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",number]];
            //打开手势
            imgView.userInteractionEnabled = YES;
            [self.view addSubview:imgView];
            
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
            [imgView addGestureRecognizer:tap];
        }
        
    }
}
- (void)tap:(UITapGestureRecognizer *)tap
{
    if (_isLarge == NO)
    {
        //放大
        _oldFrame = tap.view.frame;
        
        [UIView animateWithDuration:0.5 animations:^{
            tap.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
            
//            [self.view bringSubviewToFront:tap.view];
            for (UIView *view in self.view.subviews)
            {
                if (view != tap.view)
                {
                    view.alpha = 0;
                }
            }
            
        } completion:^(BOOL finished) {
            
        }];
    }else
    {
        //缩小
        [UIView animateWithDuration:0.5 animations:^{
            tap.view.frame = _oldFrame;
            
//            [self.view sendSubviewToBack:tap.view];
            for (UIView *view in self.view.subviews)
            {
                if (view != tap.view)
                {
                    view.alpha = 1.0;
                }
            }
            
        } completion:^(BOOL finished) {
            
        }];
    }
    _isLarge = !_isLarge;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  NextViewController.m
//  SendBackToValue
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
    
    self.view.backgroundColor=[UIColor redColor];
    for (int i=0; i<4; i++) {
        UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
        button.frame=CGRectMake(50, 50+i*40, 200, 30);
       button.backgroundColor=[UIColor cyanColor];
        [button addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        switch (i) {
            case 0:
                [button setTitle:@"德玛西亚" forState:UIControlStateNormal];
                break;
            case 1:
                [button setTitle:@"盲僧" forState:UIControlStateNormal];
                break;
                
            case 2:
                [button setTitle:@"影魔" forState:UIControlStateNormal];
                break;
                
            case 3:
                [button setTitle:@"风暴之灵" forState:UIControlStateNormal];
                break;

           default:
                break;
        }
    
    }
    
    
    
    
    
    
}
-(void)back:(UIButton *)button
{
    //执行回调（ 反向传值 ）
    //如果代理响应这个事件
    
    if ([_delegate respondsToSelector:@selector(sendValue:)])  {
        //那么才来执行
        
        [_delegate sendValue:button.currentTitle];
        
    }
    
    
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

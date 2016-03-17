//
//  RootViewController.m
//  ShitukongzhiqiCHANGE
//
//  Created by 曹丰 on 15/7/30.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "RootViewController.h"
#import "NextViewController.h"
@interface RootViewController ()

{
    
    NSString *_string;
}
@end

@implementation RootViewController
//OC中手动调用构造方法；

-(instancetype)init
{
    
    if (self=[super init]) {
     
        
    }
    return self;
}




//默认的构造方法；

-(instancetype)initWithString:(NSString*)str
{
    
    if (self=[super init]) {
        _string=str;
        //在构造方法中，不能调用self.view 只能作数组，字典这些和UI无关的初始化操作；
        //原因是在构造方法调用self.view 会触发viewDidLoad;
        
    }
    return self;
    
    
    
    
}
//init之后，iOS会自动初始化控制器所拥有的view(self.view);
//初始化完成，就会走到viewDidLoad；


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    //如果要初始化UI，要放到viewDidLoad里面来
    
    NSLog(@"_string==%@",_string);

    self.view.backgroundColor= [UIColor redColor];
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"跳到下一个页面" forState:UIControlStateNormal];
    button.frame=CGRectMake(50, 50, 200, 30);
    button.backgroundColor=[UIColor darkGrayColor];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    for (int i=0; i<3; i++) {
        UIButton *button1=[UIButton buttonWithType:UIButtonTypeSystem];
        
        
        button1.frame=CGRectMake(50, 100+40*i, 100, 30);
        button1.backgroundColor=[UIColor whiteColor];
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
        [button1 addTarget:self action:@selector(skip:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button1];
        
    }
}
-(void)skip:(UIButton*)button
{
    //正向传值, A->B ，实用点语法(setter和getter);
    
    NextViewController *nextVC=[[NextViewController alloc]init];
//访问nextVC的name属性，进行参数传递；
    nextVC.name=button.currentTitle;
    
    //正常的页面跳转
    [self presentViewController:nextVC animated:YES completion:nil];
    
    
    
    
}

-(void)buttonClick
{
    NextViewController *nextVC=[[NextViewController alloc]init];
    //跳转之前，设置切换风格
    
    /*
     UIModalTransitionStyleCoverVertical   //上下切换
     UIModalTransitionStyleFlipHorizontal, //翻转效果
     UIModalTransitionStyleCrossDissolve,  //渐隐
     UIModalTransitionStylePartialCurl     //翻页
     */
    nextVC.modalTransitionStyle=UIModalTransitionStylePartialCurl;
    
    
    
    //跳转；
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

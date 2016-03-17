//
//  RootViewController.h
//  5.视图控制器反向传值(代理)
//
//  Created by liuyuecheng on 15/7/30.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostValue.h"

//代理需要做三件事
//1.遵守协议
//2.设置代理
//3.实现代理方法
@interface RootViewController : UIViewController<PostValue>

@end

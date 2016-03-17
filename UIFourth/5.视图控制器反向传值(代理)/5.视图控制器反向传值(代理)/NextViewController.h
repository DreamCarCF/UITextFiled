//
//  NextViewController.h
//  5.视图控制器反向传值(代理)
//
//  Created by liuyuecheng on 15/7/30.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostValue.h"
@interface NextViewController : UIViewController

@property (nonatomic,assign)id<PostValue>delegate;

@end

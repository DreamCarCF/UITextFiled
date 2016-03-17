//
//  RootViewController.h
//  SendBackToValue
//
//  Created by 曹丰 on 15/7/30.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostValue.h"
// 代理需要做三件事
//  1.遵守协议
// 2.设置代理；
// 3.实现代理方法；





@interface RootViewController : UIViewController<PostValue>


@end

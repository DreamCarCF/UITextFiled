//
//  AppDelegate.h
//  7.Appdelegate使用
//
//  Created by liuyuecheng on 15/7/30.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//给应用程序的代理添加一个属性
@property (nonatomic,copy)NSString *name;
@end


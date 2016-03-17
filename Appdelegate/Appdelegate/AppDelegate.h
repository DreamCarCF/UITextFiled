//
//  AppDelegate.h
//  Appdelegate
//
//  Created by 曹丰 on 15/7/30.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


//给应用程序的代理添加一个属性；
//应用程序是唯一的所以代理也是唯一的；
@property(nonatomic,copy)NSString *name;
@end


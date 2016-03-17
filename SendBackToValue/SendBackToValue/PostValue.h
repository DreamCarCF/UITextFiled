//
//  PostValue.h
//  SendBackToValue
//
//  Created by 曹丰 on 15/7/30.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PostValue <NSObject>


//协议有一个传值的方法
-(void)sendValue:(NSString *)string;

//如果是B向A反向传值，那么B是被代理，A是代理；
//第二个页面往第一个页面反向传值，那么第二个页面就是被代理，第一个页面就是代理；








   //NectViewController  被代理：  拥有一个delegate成员，并且执行回调；
  //RootViewController   代理：   遵守协议，实现方法，设置xxx。delegate = self






@end

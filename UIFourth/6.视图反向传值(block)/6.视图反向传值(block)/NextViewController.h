//
//  NextViewController.h
//  6.视图反向传值(block)
//
//  Created by liuyuecheng on 15/7/30.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^blcoType) (NSString *string);

@interface NextViewController : UIViewController
//block 用block修饰
//这个block没有返回值,并且调用时,会带一个参数
//@property (nonatomic,copy)void (^block)(NSString *string);
@property (nonatomic,copy)blcoType block;
@end

//
//  NextViewController.h
//  Bolckreally
//
//  Created by 曹丰 on 15/7/30.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^blocType) (NSString*string);
@interface NextViewController : UIViewController
//@property(nonatomic,copy)void(^block)(NSString*string);


@property(nonatomic,copy)blocType block;
@end

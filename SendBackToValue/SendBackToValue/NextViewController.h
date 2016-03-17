//
//  NextViewController.h
//  SendBackToValue
//
//  Created by 曹丰 on 15/7/30.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostValue.h"
@interface NextViewController : UIViewController


@property(nonatomic,assign)id<PostValue>delegate;

@end

//
//  NextViewController.h
//  EnterWithNameAndParess
//
//  Created by 曹丰 on 15/7/30.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^blcoType) (NSString *string);
typedef void(^blcoType1) (NSString *string);

@interface NextViewController : UIViewController

@property (nonatomic,copy)blcoType block;

@property (nonatomic,copy)blcoType1 block1;




@property(nonatomic,copy)NSString*_str1;
@property(nonatomic,copy)NSString*_str2;
@end

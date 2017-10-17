//
//  PlaceHolderTextView.h
//  MytekServicepro
//
//  Created by 秦先觉 on 2017/5/6.
//  Copyright © 2017年 Chong Maiyuan Technology Co., Ltd. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface PlaceHolderTextView : UITextView
@property (nonatomic, strong) NSString *placeholder;
@property (nonatomic, strong) UIColor *placeholderColor;

-(void)textChanged:(NSNotification*)notification;

@end

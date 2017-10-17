//
//  UIView+InterfaceBuilder.h
//  MytekZZB
//
//  Created by 谭谭诚 on 2017/7/24.
//  Copyright © 2017年 Chong Maiyuan Technology Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

//IB_DESIGNABLE

@interface UIView (InterfaceBuilder)




@property (nonatomic ,assign) IBInspectable CGFloat cornerRadius;

@property (nonatomic ,assign) IBInspectable CGFloat borderWidth;

@property (nonatomic ,strong) IBInspectable UIColor *borderColor;


@end

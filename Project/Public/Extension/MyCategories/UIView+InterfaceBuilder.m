//
//  UIView+InterfaceBuilder.m
//  MytekZZB
//
//  Created by 谭谭诚 on 2017/7/24.
//  Copyright © 2017年 Chong Maiyuan Technology Co., Ltd. All rights reserved.
//

#import "UIView+InterfaceBuilder.h"

@implementation UIView (InterfaceBuilder)


- (void)setCornerRadius:(CGFloat)cornerRadius{
   
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
    
}

- (CGFloat)cornerRadius{
    return self.layer.cornerRadius;
}


- (void)setBorderWidth:(CGFloat)borderWidth{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)borderWidth{
    return self.layer.borderWidth;
}

- (void)setBorderColor:(UIColor *)borderColor{
    self.layer.borderColor = borderColor.CGColor;
}
- (UIColor *)borderColor{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}
@end

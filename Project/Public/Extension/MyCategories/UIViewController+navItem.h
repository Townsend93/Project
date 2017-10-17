//
//  UIViewController+navItem.h
//  Project
//
//  Created by 谭谭诚 on 2017/10/9.
//  Copyright © 2017年 tancheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (navItem)

#pragma mark - left
- (UIBarButtonItem *)setNavigationLeftItemWithIcon:(NSString *)normalIcon
                                   highlightedIcon:(NSString *)highlightedIcon;

#pragma mark - middle
- (void)setNavigationCustomTitle:(NSString *)title
                customTitleColor:(UIColor *)customTitleColor;

#pragma mark - right
- (UIBarButtonItem *)setNavigationRightItemWithIcon:(NSString *)normalIcon
                                    highlightedIcon:(NSString *)highlightedIcon;
- (UIBarButtonItem *)setNavigationRightItemWithTitle:(NSString *)title
                                     itemNormalColor:(UIColor *)itemNormalColor
                                itemHighlightedColor:(UIColor *)itemHighlightedColor;


- (NSArray<UIBarButtonItem *>*)setNavigationRightItemsWithIocns:(NSArray <NSString*>*)normalIcons
                                               highlightedIcons:(NSArray <NSString*>*)highlightedIcons;

#pragma mark - itemAction
- (void)leftClick:(UIButton *)btn;
- (void)rightClick:(UIButton *)btn;
@end

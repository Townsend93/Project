//
//  UIViewController+navItem.m
//  Project
//
//  Created by 谭谭诚 on 2017/10/9.
//  Copyright © 2017年 tancheng. All rights reserved.
//

#import "UIViewController+navItem.h"

static const CGFloat itemFontSize = 16;
static const CGFloat titleSize = 18;

static const CGFloat itemMargin = 12;
static const CGFloat itemHeight = 30;


#define titleColor UIColorWithHex(0x333333)

#define normalColor UIColorWithHex(0x333333)
#define highlightedColor [UIColor orangeColor]
#define disableColor [UIColor lightGrayColor]


@implementation UIViewController (navItem)

- (UIButton *)getBtnWithIcon:(NSString *)normalIcon
              highlightedIcon:(NSString *)highlightedIcon {
    
    UIImage *itemNormalImage = [UIImage imageNamed:normalIcon];
    UIImage *itemHighlightedImage = [UIImage imageNamed:highlightedIcon];
    
    CGFloat width = itemNormalImage ? itemNormalImage.size.width : 0;
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, width, itemHeight);
    
    [btn setImage:itemNormalImage forState:UIControlStateNormal];
    [btn setImage:itemHighlightedImage forState:UIControlStateHighlighted];
    
    return btn;
}


- (UIButton *)getBtnWithTitle:(NSString *)title
        itemNormalColor:(UIColor *)itemNormalColor
   itemHighlightedColor:(UIColor *)itemHighlightedColor
       itemDisableColor:(UIColor *)itemDisableColor
{
    
    CGFloat width =  [title jk_sizeWithFont:[UIFont systemFontOfSize:itemFontSize] constrainedToHeight:itemHeight].width;
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, width, itemHeight);
    
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:itemNormalColor?itemNormalColor:normalColor forState:UIControlStateNormal];
    
    [btn setTitle:title forState:UIControlStateHighlighted];
    [btn setTitleColor:itemHighlightedColor?itemHighlightedColor:highlightedColor forState:UIControlStateHighlighted];
    
    [btn setTitle:title forState:UIControlStateDisabled];
    [btn setTitleColor:itemDisableColor?itemDisableColor:disableColor forState:UIControlStateDisabled];
    
    btn.titleLabel.font = [UIFont systemFontOfSize:itemFontSize];
    
    [btn addTarget:self action:@selector(rightClick:) forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

#pragma mark - left

- (UIBarButtonItem *)setNavigationLeftItemWithIcon:(NSString *)normalIcon
                         highlightedIcon:(NSString *)highlightedIcon {

    UIButton *btn = [self getBtnWithIcon:normalIcon highlightedIcon:highlightedIcon];
    [btn addTarget:self action:@selector(leftClick:) forControlEvents:UIControlEventTouchUpInside];

    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.leftBarButtonItem = item;
    self.navigationItem.jk_leftMargin = itemMargin;
    
    return item;
}


#pragma mark - middle

- (void)setNavigationCustomTitle:(NSString *)title customTitleColor:(UIColor *)customTitleColor {
    
    CGFloat width =  [title jk_sizeWithFont:[UIFont systemFontOfSize:titleSize] constrainedToHeight:itemHeight].width;
    
    UILabel *lab = [UILabel new];
    lab.text = title;
    lab.textColor = customTitleColor ? customTitleColor : titleColor;
    lab.font = [UIFont systemFontOfSize:titleSize];
    lab.frame = CGRectMake(0, 0, width, itemHeight);
    
    self.navigationItem.titleView = lab;
    
}

#pragma mark - right

- (UIBarButtonItem *)setNavigationRightItemWithIcon:(NSString *)normalIcon
                         highlightedIcon:(NSString *)highlightedIcon {
    
    UIButton *btn = [self getBtnWithIcon:normalIcon highlightedIcon:highlightedIcon];
    
    [btn addTarget:self action:@selector(rightClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.rightBarButtonItem = item;
    self.navigationItem.jk_rightMargin = itemMargin;
    
    return item;
}

- (UIBarButtonItem *)setNavigationRightItemWithTitle:(NSString *)title
                                     itemNormalColor:(UIColor *)itemNormalColor
                                itemHighlightedColor:(UIColor *)itemHighlightedColor{
    
    UIButton *btn = [self getBtnWithTitle:title itemNormalColor:itemNormalColor itemHighlightedColor:itemHighlightedColor itemDisableColor:nil];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.rightBarButtonItem = item;
    self.navigationItem.jk_rightMargin = itemMargin;
    
    return item;
}

- (NSArray<UIBarButtonItem *>*)setNavigationRightItemsWithIocns:(NSArray <NSString*>*)normalIcons highlightedIcons:(NSArray <NSString*>*)highlightedIcons {
    
    NSMutableArray *items = [NSMutableArray new];
    [normalIcons enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
       
        UIButton *btn = [self getBtnWithIcon:obj highlightedIcon:highlightedIcons.count < idx ? highlightedIcons[idx] : @""];
        
        UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:btn];
        
        [items addObject:item];
    }];
    
    self.navigationItem.rightBarButtonItems = items;
    self.navigationItem.jk_rightMargin = itemMargin;

    return nil;
}


#pragma mark - itemAction

- (void)leftClick:(UIButton *)btn {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)rightClick:(UIButton *)btn {
    
}


@end

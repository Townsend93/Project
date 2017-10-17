//
//  BaseTableViewCell.h
//  Project
//
//  Created by 谭谭诚 on 2017/9/29.
//  Copyright © 2017年 tancheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTableViewCell : UITableViewCell

@property (nonatomic, strong) UIImageView *bottomLine;

@property (nonatomic, assign) CGFloat bottomLineLeftMargin;

@property (nonatomic, assign) CGFloat bottomLineRightMargin;

@property (nonatomic, assign) BOOL showRightArrow;

@property (nonatomic, strong) UIImage *rightArrowImage;

@end

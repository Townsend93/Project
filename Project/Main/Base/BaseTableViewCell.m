//
//  BaseTableViewCell.m
//  Project
//
//  Created by 谭谭诚 on 2017/9/29.
//  Copyright © 2017年 tancheng. All rights reserved.
//

#import "BaseTableViewCell.h"

#define bottomLineColor UIColorWithHex(0xe5e5e5)

@implementation BaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.bottomLine.hidden = NO;
    }
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.bottomLine.hidden = NO;
}

- (UIImageView *)bottomLine{
    
    if (!_bottomLine) {
        
        _bottomLine = [UIImageView new];
        self.bottomLine.backgroundColor = bottomLineColor;
        [self.contentView addSubview:_bottomLine];
        [_bottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView.mas_left).offset(12);
            make.bottom.equalTo(self.contentView.mas_bottom);
            make.right.equalTo(self.contentView.mas_right);
            make.height.equalTo(@(0.5));
        }];
        
    }
    
    return _bottomLine;
    
}

- (void)setBottomLineLeftMargin:(CGFloat)bottomLineLeftMargin{
    _bottomLineLeftMargin = bottomLineLeftMargin;
    [_bottomLine mas_updateConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView.mas_left).offset(_bottomLineLeftMargin);
        
    }];
    
    
}

- (void)setBottomLineRightMargin:(CGFloat)bottomLineRightMargin{
    _bottomLineRightMargin = bottomLineRightMargin;
    [_bottomLine mas_updateConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView.mas_right).offset(_bottomLineRightMargin);
        
    }];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

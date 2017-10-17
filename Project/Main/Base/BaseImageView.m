//
//  BaseImageView.m
//  Project
//
//  Created by 谭谭诚 on 2017/9/30.
//  Copyright © 2017年 tancheng. All rights reserved.
//

#import "BaseImageView.h"

@interface BaseImageView () {
    
}

@property (nonatomic, strong) UIActivityIndicatorView *indicatorView;

@end

@implementation BaseImageView



- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)addTapWithBlcok:(void(^)(void))tapBlock {
    
    [self jk_addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
        if (tapBlock) {
            tapBlock();
        }
    }];
    
}

/*
 * @param url
 * @return void
 */
- (void)loadImage:(NSString *)url {
    NSString * imageUrl = @"";
    if (![url hasPrefix:@"http"]) {
      imageUrl = [NSString stringWithFormat:@"%@%@",baseUrl,url];
    }else{
        imageUrl = url;
    }
    
    self.backgroundColor = [UIColor lightGrayColor];
    __weak typeof(self) weakSelf = self;
    [self sd_setImageWithURL:[NSURL URLWithString:imageUrl] placeholderImage:nil completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        
        weakSelf.backgroundColor = [UIColor whiteColor];
        
    }];
    
}

- (UIActivityIndicatorView *)indicatorView {
    
    if (!_indicatorView) {
        _indicatorView = [[UIActivityIndicatorView alloc]init];
        [self addSubview:_indicatorView];
        [_indicatorView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.mas_centerX);
            make.centerY.equalTo(self.mas_centerY);
            make.height.equalTo(@30);
            make.width.equalTo(@30);
        }];
        
    }
    
    return _indicatorView;
}

- (void)showLoading {
    [self.indicatorView startAnimating];
}

- (void)hideLoading{
   [self.indicatorView stopAnimating];
    [_indicatorView removeFromSuperview];
    _indicatorView = nil;
}


@end

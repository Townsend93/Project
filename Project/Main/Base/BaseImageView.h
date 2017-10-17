//
//  BaseImageView.h
//  Project
//
//  Created by 谭谭诚 on 2017/9/30.
//  Copyright © 2017年 tancheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseImageView : UIImageView

- (void)addTapWithBlcok:(void(^)(void))tapBlock;

- (void)loadImage:(NSString *)url;

@end

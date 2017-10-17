//
//  BaseView.m
//  Project
//
//  Created by 谭谭诚 on 2017/9/29.
//  Copyright © 2017年 tancheng. All rights reserved.
//

#import "BaseView.h"

@interface BaseView () {
    
}


@end

@implementation BaseView

- (void)addTapWithBlcok:(void(^)(void))tapBlock {
    
    [self jk_addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
        if (tapBlock) {
            tapBlock();
        }
    }];
    
}



@end

//
//  MyUncaughtExceptionHandler.h
//  MytekDistributor
//
//  Created by 谭谭诚 on 2017/9/26.
//  Copyright © 2017年 Chong Maiyuan Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MyUncaughtExceptionHandler : NSObject {
    BOOL dismissed;
}

void UncaughtExceptionHandler(NSException *exception);

void InstallUncaughtExceptionHandler();

@end

//
//  NetworkTool.h
//  Project
//
//  Created by 谭谭诚 on 2017/10/10.
//  Copyright © 2017年 tancheng. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 请求成功的block
 
 @param response 响应体数据
 */
typedef void(^RequestSuccess)(id response);
/**
 请求失败的block
 
 @param error 错误信息
 */
typedef void(^RequestFailure)(NSError *error);

@interface NetworkTool : NSObject

@property (nonatomic, assign) BOOL isNeedToken;


@end

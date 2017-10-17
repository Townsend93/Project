//
//  BaseModel.h
//  Project
//
//  Created by 谭谭诚 on 2017/9/29.
//  Copyright © 2017年 tancheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYModel/YYModel.h>

@interface BaseModel : NSObject <NSCoding,YYModel>

+(instancetype)objetForDictionary:(NSDictionary *)dic;

+ (NSMutableArray *)objetForArray:(NSArray *)arr;

//容器类，指定类名
+ (NSDictionary *)modelContainerPropertyGenericClass;

@end

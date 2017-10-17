//
//  TestModel.m
//  Project
//
//  Created by 谭谭诚 on 2017/9/29.
//  Copyright © 2017年 tancheng. All rights reserved.
//

#import "TestModel.h"

@implementation TestModel

+ (NSDictionary *)modelContainerPropertyGenericClass {
    
    return @{@"son" : [Son class],
             };
}

@end

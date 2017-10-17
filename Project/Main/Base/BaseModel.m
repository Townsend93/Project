//
//  BaseModel.m
//  Project
//
//  Created by 谭谭诚 on 2017/9/29.
//  Copyright © 2017年 tancheng. All rights reserved.
//

#import "BaseModel.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation BaseModel


+(instancetype)objetForDictionary:(NSDictionary *)dic {
   return  [self yy_modelWithDictionary:dic];
}

+ (NSMutableArray *)objetForArray:(NSArray *)arr {
    NSMutableArray *mutableArr = [NSMutableArray new];
    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        if ([self objetForDictionary:obj]) {
            [mutableArr addObject:[self objetForDictionary:obj]];
        }
        
    }];
    return mutableArr;
}
//容器类，指定类名
+ (NSDictionary *)modelContainerPropertyGenericClass {
    //属性名@"son",属性类名[Son class]
    //return @{@"son" : [Son class],
     //        };
    return nil;
}


- (void)encodeWithCoder:(NSCoder *)aCoder{
    [self yy_modelEncodeWithCoder:aCoder];//yymodel实现
    /*
    unsigned int outCount = 0;
    Ivar *vars = class_copyIvarList([self class], &outCount);
    for (int i = 0; i < outCount; i ++) {
        Ivar var = vars[i];
        const char *name = ivar_getName(var);
        if (!name) {
            continue;
        }
        NSString *key = [NSString stringWithUTF8String:name];
        if (!key) {
            continue;
        }
        id value = [self valueForKey:key];
        if (!value) {
            continue;
        }
        [aCoder encodeObject:value forKey:key];
        
    }
     free(vars);
    */
}

- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder{
    return  [self yy_modelInitWithCoder:aDecoder];//yymodel实现
    /*
    if (self = [super init]) {
        unsigned int outCount = 0;
        Ivar *vars = class_copyIvarList([self class], &outCount);
        for (int i = 0; i < outCount; i ++) {
            Ivar var = vars[i];
            const char *name = ivar_getName(var);
            if (!name) {
                continue;
            }
            NSString *key = [NSString stringWithUTF8String:name];
            if (!key) {
                continue;
            }
            id value = [aDecoder decodeObjectForKey:key];
            if (!value) {
                continue;
            }
            [self setValue:value forKey:key];
        }
        free(vars);
    }
    return self;
    */
}



@end

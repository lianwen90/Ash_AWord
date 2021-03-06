//
//  BaseViewModel.m
//  TheLifeCircle
//
//  Created by xmfish on 14/12/30.
//  Copyright (c) 2014年 小鱼网. All rights reserved.
//

#import "BaseViewModel.h"

@implementation BaseViewModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"errCode": @"ret",
             @"errMessage": @"msg",
             };
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError **)error
{
    self = [super initWithDictionary:dictionaryValue error:error];
    if (self != nil)
    {
    }
    return self;
}

- (BOOL)success
{
    return (self.errCode.integerValue == 0);
}

- (BOOL)needLogin
{
    return (self.errCode.integerValue == 1001);
}

@end

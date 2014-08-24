//
//  WeiBoModel.m
//  tableCell
//
//  Created by chenguandong on 14-8-23.
//  Copyright (c) 2014年 chenguandong. All rights reserved.
//

#import "WeiBoModel.h"

@implementation WeiBoModel
+(id)initWeiboWithArray:(NSDictionary *)dic{

    return [[self alloc]initWeiboWithArray:dic];
}

-(id)initWeiboWithArray:(NSDictionary *)dic{
    if (self==[super init]) {
        self.name = dic[@"name"];
        self.time =dic[@"time"];
        self.vip = [dic[@"vip"]boolValue];
        self.source = dic[@"source"];
        self.image = dic[@"image"];
        self.icon = dic[@"icon"];
        self.content = dic[@"content"];
    }
    return  self;
}
@end

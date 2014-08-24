//
//  WeiBoFrame.h
//  tableCell
//
//  Created by chenguandong on 14-8-24.
//  Copyright (c) 2014年 chenguandong. All rights reserved.
//

#import <Foundation/Foundation.h>

//cell的边框宽度
#define kCellBorder 10
//头像的宽高
#define kIconWH 50
//vip图标大小
#define kVipWH  20

#define kSimpleFontSize [UIFont systemFontOfSize:14]
#define kSmileFontSize  [UIFont systemFontOfSize:12]


@class WeiBoModel;

@interface WeiBoFrame : NSObject
@property(nonatomic,assign,readonly)CGRect iconF;
@property(nonatomic,assign,readonly)CGRect nameF;
@property(nonatomic,assign,readonly)CGRect vipF;
@property(nonatomic,assign,readonly)CGRect timeF;
@property(nonatomic,assign,readonly)CGRect sourceF;
@property(nonatomic,assign,readonly)CGRect contentF;
@property(nonatomic,assign,readonly)CGRect imageF;
@property(nonatomic,assign,readonly)CGFloat cellHeight;
@property(nonatomic,strong)WeiBoModel*weiboModel;
@end

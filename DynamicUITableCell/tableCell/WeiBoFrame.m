//
//  WeiBoFrame.m
//  tableCell
//
//  Created by chenguandong on 14-8-24.
//  Copyright (c) 2014年 chenguandong. All rights reserved.
//

#import "WeiBoFrame.h"
#import "WeiBoModel.h"
@implementation WeiBoFrame
-(void)setWeiboModel:(WeiBoModel *)weiboModel{

    _weiboModel = weiboModel;
    
    
    // 计算头像
    CGFloat iconX = kCellBorder;
    CGFloat iconY = kCellBorder;
   _iconF = CGRectMake(iconX, iconY, kIconWH, kIconWH);

    
    
    //计算昵称
    CGFloat nikeNameX =CGRectGetMaxX(_iconF)+kCellBorder;
    CGFloat nikeNameY =iconY;
    //计算用户名称的尺寸

    CGSize nikeNameFontSize = [_weiboModel.name sizeWithFont:kSimpleFontSize];

    _nameF = CGRectMake(nikeNameX,nikeNameY, nikeNameFontSize.width, nikeNameFontSize.height);

    
    
    //会员图标
    
    CGFloat vipX = CGRectGetMaxX(_nameF)+kCellBorder;
    CGFloat vipY = nikeNameY;
    _vipF=CGRectMake(vipX, vipY, kVipWH, kVipWH);

    
    
    //时间
    
    CGFloat timeX = CGRectGetMaxX(_iconF)+kCellBorder;
    CGFloat timeY = CGRectGetMaxY(_nameF)+kCellBorder;
    CGSize timeFontSize = [_weiboModel.time sizeWithFont:kSmileFontSize];
    _timeF = CGRectMake(timeX, timeY, timeFontSize.width, timeFontSize.height);

    
    //来源
    
    CGFloat sourceX = CGRectGetMaxX(_timeF)+kCellBorder;
    CGFloat sourceY =timeY;
    CGSize sourceFontSize = [_weiboModel.source sizeWithFont:kSmileFontSize];
    _sourceF = CGRectMake(sourceX, sourceY, sourceFontSize.width, sourceFontSize.height);

    
    
    //正文
    
    CGFloat contentX = kCellBorder;
    
    CGFloat contentY  =MAX( CGRectGetMaxY(_timeF),CGRectGetMaxY(_iconF))+kCellBorder;
    
    CGSize contentFontSize = [_weiboModel.content sizeWithFont:kSimpleFontSize constrainedToSize:CGSizeMake(SCREEN_WIDTH-2*kCellBorder, MAXFLOAT)];
     _contentF = CGRectMake(contentX, contentY, SCREEN_WIDTH-2*kCellBorder, contentFontSize.height);
    
    //图片
    
    if (_weiboModel.image.length>0) {
        
        CGFloat imageX = kCellBorder;
        CGFloat imageY = CGRectGetMaxY(_contentF)+kCellBorder;
        
         _imageF = CGRectMake(imageX, imageY, SCREEN_WIDTH-kCellBorder*2  ,100);
        
        _cellHeight = CGRectGetMaxY(_imageF)+kCellBorder;

    }else{
        _cellHeight =CGRectGetMaxY(_contentF)+kCellBorder;
    }
    
}
@end

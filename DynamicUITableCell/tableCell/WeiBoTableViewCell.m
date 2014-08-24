//
//  WeiBoTableViewCell.m
//  tableCell
//
//  Created by chenguandong on 14-8-23.
//  Copyright (c) 2014年 chenguandong. All rights reserved.
//

#import "WeiBoTableViewCell.h"
#import "WeiBoModel.h"
#import "WeiBoFrame.h"

@interface WeiBoTableViewCell(){

    UIImageView *_icon;
    UILabel *_nikeName;
    UIImageView *_vipImage;
    UILabel *_timeLable ;
    UILabel *_sourceLable;
    UILabel *_contentlable;
    UIImageView *_image ;
}

@end

@implementation WeiBoTableViewCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        //添加子控件
        
        
        //1.头像
        
        _icon = [[UIImageView alloc]init];
        
        [self.contentView addSubview:_icon];
        //2,昵称
        
        _nikeName  = [[UILabel alloc]init];
        _nikeName.font = kSimpleFontSize;
        
        [self.contentView addSubview:_nikeName];
        
        //3,会员图标
        
        _vipImage = [[UIImageView alloc]init];
        _vipImage.image  = [UIImage imageNamed:@"king.png"];
        
        [self.contentView addSubview:_vipImage];
        
        
        //4,时间
        
        _timeLable  = [[UILabel alloc]init];
        _timeLable.font = kSmileFontSize;
        
        [self.contentView addSubview:_timeLable];

        //5,来源
        _sourceLable  = [[UILabel alloc]init];
         _sourceLable.font = kSmileFontSize;
        
        [self.contentView addSubview:_sourceLable];
        
        //6,微博正文
        
        _contentlable  = [[UILabel alloc]init];
        _contentlable.numberOfLines =0;
        _contentlable.font= kSimpleFontSize;
        
        [self.contentView addSubview:_contentlable];
        
        //7,配图
        
        _image = [[UIImageView alloc]init];
    

        [self.contentView addSubview:_image];
        
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



-(void)setWeiboFrame:(WeiBoFrame *)weiboFrame{
    _weiboFrame  = weiboFrame;
    
    //设置微博数据
    [self setData];
    

}


//设置微博数据
-(void)setData{

    WeiBoModel *weiboModel = _weiboFrame.weiboModel;
    //内容图片
    if (weiboModel.image) {
        _image.hidden = NO;
        _image.image = [UIImage imageNamed:weiboModel.image];
    }else{
        _image.hidden = YES;
    }
    
    
    //头像
    _icon.image = [UIImage imageNamed:weiboModel.icon];
    
    
    //是否VIP
    if (weiboModel.vip) {
        _vipImage.hidden = NO;
        
    }else{
        _vipImage.hidden = YES;
    }
    
    
    //昵称
    _nikeName.text = weiboModel.name;
    //内容
    _contentlable.text = weiboModel.content;
    //时间
    _timeLable.text = weiboModel.time;
    //来源
    _sourceLable.text = weiboModel.source;
}

-(void)layoutSubviews{
    _icon.frame = _weiboFrame.iconF;
    _nikeName.frame = _weiboFrame.nameF;
    _vipImage.frame = _weiboFrame.vipF;
    _timeLable.frame = _weiboFrame.timeF;
    _sourceLable.frame = _weiboFrame.sourceF;
    _contentlable.frame = _weiboFrame.contentF;
    if (_weiboFrame.weiboModel.image) {
        _image.frame = _weiboFrame.imageF;
    }
    

}



@end

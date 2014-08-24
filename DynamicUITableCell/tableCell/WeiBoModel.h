//
//  WeiBoModel.h
//  tableCell
//
//  Created by chenguandong on 14-8-23.
//  Copyright (c) 2014年 chenguandong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeiBoModel : NSObject
@property(nonatomic,copy)NSString *content;
@property(nonatomic,copy)NSString *time;
@property(nonatomic,copy)NSString *source;
@property(nonatomic,copy)NSString *icon;
@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *image;
@property (nonatomic,assign)BOOL vip;

-(id)initWeiboWithArray:(NSDictionary*)dic;
+(id)initWeiboWithArray:(NSDictionary*)dic;
@end

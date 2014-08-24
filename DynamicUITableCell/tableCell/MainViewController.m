//
//  MainViewController.m
//  tableCell
//
//  Created by chenguandong on 14-8-23.
//  Copyright (c) 2014年 chenguandong. All rights reserved.
//

#import "MainViewController.h"
#import "WeiBoTableViewCell.h"
#import "WeiBoModel.h"
#import "WeiBoFrame.h"
@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>{
    NSMutableArray *_weiboArr;
}

@end

@implementation MainViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //设置数据
    NSArray *arrayData =[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"weibo.plist" ofType:nil ]];
    
    _weiboArr = [NSMutableArray arrayWithCapacity:3];
    
    for (NSDictionary *webBoDic in arrayData) {
        WeiBoFrame *weiboFrame = [[WeiBoFrame alloc]init];
        weiboFrame.weiboModel = [[WeiBoModel alloc]initWeiboWithArray:webBoDic];
        [_weiboArr addObject:weiboFrame];
    }
    
    
    // 设置table
    _tableView = [[UITableView alloc]init];
    _tableView.autoresizingMask =UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    _tableView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerClass:[WeiBoTableViewCell class] forCellReuseIdentifier:@"myCell"];
    
    [self.view addSubview:_tableView];
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return _weiboArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    WeiBoTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];

    cell.weiboFrame  = _weiboArr[indexPath.row];
    return cell;
}

#pragma mark cell高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [_weiboArr[indexPath.row] cellHeight];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

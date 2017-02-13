//
//  CondictionTradeCtl.h
//  CampusClient
//
//  Created by job1001 job1001 on 12-6-18.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

/******************************
 
 行业列表选择模块
 
 ******************************/

#import <UIKit/UIKit.h>
//#import "PreBaseUIViewController.h"
//#import "PreCondictionListCtl.h"
//#import "CondictionTradeCtl_Sub.h"

#define CondictionTradeCtl_Xib_Name             @"CondictionTradeCtl"
//#define CondictionTradeCtl_Title                @"选择行业"

@interface CondictionTradeCtl : UIViewController<UITableViewDelegate,UITableViewDataSource> {
//    IBOutlet    UITableView                     *tableView_;
    
    
    BOOL                                        bHaveSub_;          //是否有子层
//    CondictionTradeCtl_Sub                      *subCtl_;           //第二层的ctl
    
    NSMutableArray                              *dataArr_;          //dataArr_
}

//@property(nonatomic,assign) id<CondictionChooseDelegate>                delegate_;

//初始化数据
+(void) initData;

//从文件中反序列化数据
+(id) loadDataFromFile;

////由tradeId获取其pid
//+(NSString *) getTradePId:(NSString *)tradeId;
//
//+(NSString *) getTradeName:(NSString *)tradeId;
//
//+(CondictionList_DataModal *) returnPtradeId:(NSString *)tradeId;
//
////业问模块使用
//+(NSString *) getTotalNameWithTotalId:(NSString *)totalId;
//+(NSString *) getTradeNameWithTradeId:(NSString *)tradeId;
//+(CondictionList_DataModal *) returnModelWithTradeId:(NSString *)tradeId;

//设置数据
-(void) setData;

- (void)setGuWenData:(NSMutableArray *)dic;

@property(nonatomic,assign) BOOL        guwenFlag;
@property(nonatomic,strong) NSMutableArray        *tradeArray;

+ (void)archiverTradeName:(NSString *)tradeName tradeId:(NSString *)tradeId tradePId:(NSString *)tradePid bParent:(BOOL)bParent;

@end


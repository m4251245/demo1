//
//  ViewController33.m
//  webDemo
//
//  Created by 一览ios on 2017/2/7.
//  Copyright © 2017年 一览ios. All rights reserved.
//

#import "ViewController33.h"
#import "ViewController.h"
#import "CondictionTradeCtl.h"
#import "testModel.h"

@interface ViewController33 ()

@end

@implementation ViewController33

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    
   
}

- (void)btnAction
{
//    NSArray *array = [NSArray array];
//    array = [CondictionTradeCtl loadDataFromFile];
//    
//    [CondictionTradeCtl archiverTradeName:@"机器人" tradeId:@"432" tradePId:@"6" bParent:NO];
    
    testModel *model = [[testModel alloc] init];
    model.name = @"哈哈";
    model.sex = @"男";
    
//     NSString *homePath  = [NSString stringWithFormat:@"%@/%@",[[NSBundle mainBundle] resourcePath],@"1.data"];
//    NSArray *array = [NSArray arrayWithObjects:@"1",@"2", nil];
    NSString *stringPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex: 0];
    NSString *filePath = [stringPath stringByAppendingPathComponent:@"1.data"];
    BOOL flag = [NSKeyedArchiver archiveRootObject:model toFile:filePath];
    if (flag) {
        NSLog(@"==== 成功");
    }
    
   id resouce = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    NSLog(@"======= %@",resouce);
    
//    [CondictionTradeCtl archiverTradeName:@"机器人" tradeId:@"432" tradePId:@"6" bParent:NO];
    
    NSData *data = [NSData dataWithContentsOfFile:[NSString stringWithFormat:@"%@/%@",stringPath,@"trade_archive_1_8.data"]];
    NSArray *ar = [NSKeyedUnarchiver unarchiveObjectWithData:data];

    
    
    
    
    [self.navigationController pushViewController:[ViewController new] animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  TestViewController.m
//  Project
//
//  Created by 谭谭诚 on 2017/9/29.
//  Copyright © 2017年 tancheng. All rights reserved.
//

#import "TestViewController.h"
#import "TestModel.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   NSDictionary* dictionary = @{
                   @"name":@"Dave Ping",
                   @"age":@24,
                   @"phoneNumber":@18718871111,
                   @"height":@180.5,
                   @"info":@{
                           @"address":@"Guangzhou",
                           },
                   @"son":@[
                           @{
                               @"name":@"Jack1",
                               @"info":@{
                                       @"address":@"London",
                                       },
                               },
                           @{
                               @"name":@"Jack2",
                               @"info":@{
                                       @"address":@"London",
                                       },
                               }
                           
                           ]
                   };
    
    
  TestModel *model = [TestModel objetForDictionary:dictionary];
    
    NSLog(@"name is %@",model.name);
    NSLog(@"son name1 is %@",model.son);
    NSLog(@"son name2 is %@",model.son[1].name);
    
    [self addBtn];
   //[self setNavigationRightItemWithTitle:@"消息" itemNormalColor:nil itemHighlightedColor:nil];
   // [self setNavigationRightItemWithIcon:@"add-customer-21" highlightedIcon:nil];
    //[self setNavigationRightItemsWithIocns:@[@"add-customer-21",@"complaint-21-icon"] highlightedIcons:nil];
    //item.enabled = NO;
    [self setNavigationCustomTitle:@"The Home" customTitleColor:nil];
}

- (void)rightClick:(UIButton *)btn {
    NSLog(@"...e");
}

- (void)addBtn{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(150, 150, 80, 40);
    [btn setTitle:@"click" forState:UIControlStateNormal];
    [btn setTitleColor:UIColorWithHex(0x333333) forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn jk_addActionHandler:^(NSInteger tag) {
        [self.navigationController pushViewController:[BaseViewController new] animated:YES];
    }];
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

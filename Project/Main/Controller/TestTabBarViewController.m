//
//  TestTabBarViewController.m
//  Project
//
//  Created by 谭谭诚 on 2017/10/10.
//  Copyright © 2017年 tancheng. All rights reserved.
//

#import "TestTabBarViewController.h"
#import "TestViewController.h"

@interface TestTabBarViewController ()

@end

@implementation TestTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupChildControllers];
}

- (void)setupChildControllers {
    
    [self addChildViewController:[TestViewController new]
                           title:@"home"
                     normalImage:@"already-deal-icon-20"
                   selectedImage:@"already-deal-on-icon-20"];
    
    [self addChildViewController:[BaseViewController new]
                           title:@"find"
                     normalImage:@"Group business-icon-20"
                   selectedImage:@"Group business-on-icon-20"];
    
    [self addChildViewController:[BaseViewController new]
                           title:@"me"
                     normalImage:@"My-icon-20"
                   selectedImage:@"My-icon-on-20"];
    
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

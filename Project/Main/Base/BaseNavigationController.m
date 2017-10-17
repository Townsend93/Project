//
//  BaseNavigationController.m
//  Project
//
//  Created by 谭谭诚 on 2017/9/29.
//  Copyright © 2017年 tancheng. All rights reserved.
//

#import "BaseNavigationController.h"
#import "UIViewController+navItem.h"
@interface BaseNavigationController ()


@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setupNavBar {
    
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    viewController.hidesBottomBarWhenPushed = self.viewControllers.count > 0;
    if (self.viewControllers.count > 0) {
        //back btn
        [viewController setNavigationLeftItemWithIcon:@"Return-icon-20" highlightedIcon:@""];
    }
    
    [super pushViewController:viewController animated:animated];
    
}

- (nullable UIViewController *)popViewControllerAnimated:(BOOL)animated {
    
    return [super popViewControllerAnimated:animated];
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

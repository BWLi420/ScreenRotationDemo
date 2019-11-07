//
//  NavViewController.m
//  test
//
//  Created by 李勃文 on 2019/10/24.
//  Copyright © 2019 李勃文. All rights reserved.
//

#import "NavViewController.h"

@interface NavViewController ()

@end

@implementation NavViewController


+ (void)load {
    
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:(@[[self class]])];
    [navBar setShadowImage:[UIImage new]];
}

/** 自定义 push 方法 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.childViewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [super pushViewController:viewController animated:animated];
}

//跟随当前显示控制器的设置
- (BOOL)shouldAutorotate {
    return self.topViewController.shouldAutorotate;
}

@end

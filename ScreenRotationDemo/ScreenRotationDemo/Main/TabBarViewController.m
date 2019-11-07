//
//  TabBarViewController.m
//  test
//
//  Created by 李勃文 on 2019/10/24.
//  Copyright © 2019 李勃文. All rights reserved.
//

#import "TabBarViewController.h"
#import "NavViewController.h"
#import "ViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NavViewController *nav = [[NavViewController alloc] initWithRootViewController:[ViewController new]];
    [self addChildViewController:nav];
    
    nav.tabBarItem.title = @"哈哈";
}

//跟随当前导航控制器的设置
- (BOOL)shouldAutorotate {
    return self.selectedViewController.shouldAutorotate;
}

@end

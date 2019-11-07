//
//  CCViewController.m
//  test
//
//  Created by 李勃文 on 2019/10/24.
//  Copyright © 2019 李勃文. All rights reserved.
//

#import "CCViewController.h"
#import "AppDelegate.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"可旋转";
    self.view.backgroundColor = [UIColor greenColor];
}

//打开允许旋转
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    ((AppDelegate *)[[UIApplication sharedApplication] delegate]).allow = YES;
}

//关闭允许旋转
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    ((AppDelegate *)[[UIApplication sharedApplication] delegate]).allow = NO;
}

//支持旋转
- (BOOL)shouldAutorotate {
    return YES;
}

@end

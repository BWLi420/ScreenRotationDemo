//
//  BaseViewController.m
//  test
//
//  Created by 李勃文 on 2019/10/24.
//  Copyright © 2019 李勃文. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

//基类：默认不支持旋转
- (BOOL)shouldAutorotate {
    return NO;
}

//默认支持方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

@end

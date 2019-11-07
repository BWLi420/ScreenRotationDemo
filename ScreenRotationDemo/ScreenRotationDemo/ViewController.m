//
//  ViewController.m
//  ScreenRotationDemo
//
//  Created by 李勃文 on 2019/11/7.
//  Copyright © 2019 LBW. All rights reserved.
//

#import "ViewController.h"
#import "BBViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"首页";
    self.view.backgroundColor = [UIColor systemRedColor];
    
    UIButton *lbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    lbtn.frame = CGRectMake(50, 200, 150, 40);
    [lbtn setTitle:@"下一页不可旋转" forState:UIControlStateNormal];
    [lbtn addTarget:self action:@selector(openOther) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:lbtn];
}

- (void)openOther {
    [self.navigationController pushViewController:[BBViewController new] animated:YES];
}

@end

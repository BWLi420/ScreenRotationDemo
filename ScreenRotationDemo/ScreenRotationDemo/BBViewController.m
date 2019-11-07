//
//  BBViewController.m
//  test
//
//  Created by 李勃文 on 2019/10/24.
//  Copyright © 2019 李勃文. All rights reserved.
//

#import "BBViewController.h"
#import "CCViewController.h"

@interface BBViewController ()

@end

@implementation BBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"不可旋转";
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *lbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    lbtn.frame = CGRectMake(50, 200, 150, 40);
    [lbtn setTitle:@"下一页可旋转" forState:UIControlStateNormal];
    [lbtn addTarget:self action:@selector(openOther) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:lbtn];
}

- (void)openOther {
    [self.navigationController pushViewController:[CCViewController new] animated:YES];
}

@end

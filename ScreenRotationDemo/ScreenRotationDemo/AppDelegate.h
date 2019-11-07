//
//  AppDelegate.h
//  ScreenRotationDemo
//
//  Created by 李勃文 on 2019/11/7.
//  Copyright © 2019 LBW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow * window;

/// 是否允许旋转
@property (assign, nonatomic) BOOL allow;
@end


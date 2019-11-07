//
//  AppDelegate.m
//  ScreenRotationDemo
//
//  Created by 李勃文 on 2019/11/7.
//  Copyright © 2019 LBW. All rights reserved.
//

#import "AppDelegate.h"

#import "TabBarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [TabBarViewController new];
    [self.window makeKeyAndVisible];
    
    return YES;
}

//根据设置调整支持方向
- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window {
    if (self.allow) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    }
    return UIInterfaceOrientationMaskPortrait;
}

@end

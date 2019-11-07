# ScreenRotationDemo

- 针对项目中整体竖屏显示，某页面需要旋转的场景，解决方案如下：

### 1. 设置项目支持方向

- 仅勾选竖屏

![image.png](https://upload-images.jianshu.io/upload_images/2997426-28a563b4dcc70f6b.png)

### 2. AppDelegate中添加一个属性，记录是否允许旋转

```objective-c
/// 是否允许旋转
@property (assign, nonatomic) BOOL allow;
```

- 实现 supportedInterfaceOrientationsForWindow 方法

```objective-c
//根据设置调整支持方向
- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window {
    if (self.allow) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    }
    return UIInterfaceOrientationMaskPortrait;
}
```

### 3. 创建控制器基类，便于操作

- 创建控制器时应继承于基类
- 在基类中实现以下方法

```objective-c
//基类：默认不支持旋转
- (BOOL)shouldAutorotate {
    return NO;
}

//默认支持方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}
```

### 4. 针对项目架构 TabBarController + NavigationController

- 在自定义的 NavigationController 中设置跟随控制器的设置

```objective-c
//跟随当前显示控制器的设置
- (BOOL)shouldAutorotate {
    return self.topViewController.shouldAutorotate;
}
```

- 在自定义的 TabBarController 中设置跟随选中导航控制器的设置

```objective-c
//跟随当前导航控制器的设置
- (BOOL)shouldAutorotate {
    return self.selectedViewController.shouldAutorotate;
}
```

### 5. 在想要旋转的控制器中实现以下方法

- 导入 AppDelegate

```objective-c
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

```

**至此，已实现以上需求。**

> 完整Demo已上传，点击这里查看 [ScreenRotationDemo](https://github.com/mortal-master/ScreenRotationDemo)
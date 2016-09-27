//
//  AppDelegate.m
//  iba103
//
//  Created by administrator on 16/9/9.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    MainViewController *main=[[MainViewController alloc]init];
	// Override point for customization after application launch.
    UINavigationController *lightNavi=[[UINavigationController alloc] initWithRootViewController:main];
    
    
    
//    CGFloat top = 0; // 顶端盖高度
//    CGFloat bottom = 0 ; // 底端盖高度
//    CGFloat left = 0; // 左端盖宽度
//    CGFloat right = 0; // 右端盖宽度
//    UIEdgeInsets insets = UIEdgeInsetsMake(top, left, bottom, right);
//    UIImage *image=[UIImage imageNamed:@"navi_bg"];
//    // 指定为拉伸模式，伸缩后重新赋值
//    image = [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
//    
//    [lightNavi.navigationBar setBackgroundImage:image  forBarMetrics:UIBarMetricsDefault];
    
    lightNavi.navigationBar.hidden=YES;
    
    
    self.window.rootViewController=lightNavi;
    
    [self.window makeKeyAndVisible];

	return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

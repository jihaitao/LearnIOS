//
//  AppDelegate.m
//  1.CreateViewController
//
//  Created by 周泉 on 13-1-24.
//  Copyright (c) 2013年 www.iphonetrain.com 无限互联3G开发培训中心. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"
#import "MainViewController.h"
#import "SubViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // 上一节课 UIView实例添加到UIWindow
    
    // 本节课 将视图控制器添加至UIWindow 代码创建
    /*
    RootViewController *rootViewController = [[RootViewController alloc] init];
    rootViewController.view.backgroundColor = [UIColor redColor];
    self.window.rootViewController = rootViewController; // retainCount 2
    [rootViewController release];
     */
    
    // nib创建1
    /*
    RootViewController *rootViewController = [[RootViewController alloc] initWithNibName:@"View" bundle:nil];
    self.window.rootViewController = rootViewController; // retainCount 2
    [rootViewController release];
    */
     
    // nib创建2
    /*
    RootViewController *rootViewController = [[RootViewController alloc] init];
    self.window.rootViewController = rootViewController; // retainCount 2
    [rootViewController release];
    */
     
    // 旧写法
//    [self.window addSubview:rootViewController.view];
    
    // UIViewController生命周期
    /*
    MainViewController *mainViewController = [[MainViewController alloc] init];
    self.window.rootViewController = mainViewController;
    [mainViewController release];
    */
     
    SubViewController *viewController = [[SubViewController alloc] init];
    self.window.rootViewController = viewController;
    [viewController release];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

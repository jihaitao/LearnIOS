//
//  AppDelegate.m
//  1.WindowDemo
//
//  Created by 周泉 on 12-11-28.
//  Copyright (c) 2012年 www.iPhonetrain.com 无限互联3G学院. All rights reserved.
//

#import "AppDelegate.h"

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
    self.window.windowLevel = UIWindowLevelStatusBar;
    [self.window makeKeyAndVisible];
    NSLog(@"self.window frame : %@", NSStringFromCGRect(self.window.frame));
    
    /*
    NSLog(@"level : %.2f", self.window.windowLevel);
    NSLog(@"normal : %.2f", UIWindowLevelNormal);
    NSLog(@"status : %.2f", UIWindowLevelStatusBar);
    NSLog(@"alert : %.2f", UIWindowLevelAlert);
    */
    
    /*
    self.window.windowLevel = UIWindowLevelStatusBar;
    NSLog(@"window level : %.2f", self.window.windowLevel);
    NSLog(@"Normal : %.2f", UIWindowLevelNormal);
    NSLog(@"alert : %.2f", UIWindowLevelAlert);
    NSLog(@"status : %.2f", UIWindowLevelStatusBar);
    */
    UIButton *startButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    startButton.frame = CGRectMake(320/2-120/2, 180, 120, 35);
    [startButton setTitle:@"警告" forState:UIControlStateNormal];
    [startButton addTarget:self action:@selector(alertUser) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:startButton];
    
    return YES;
}

- (void)alertUser
{
    UIAlertView *alertView = [[[UIAlertView alloc]
                              initWithTitle:@"温馨提示"
                              message:@"这alert Level级别"
                              delegate:nil
                              cancelButtonTitle:@"确定"
                              otherButtonTitles:nil] autorelease];
    [alertView show];
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

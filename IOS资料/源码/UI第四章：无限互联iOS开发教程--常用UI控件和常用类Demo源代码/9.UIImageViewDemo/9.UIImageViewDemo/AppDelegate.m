//
//  AppDelegate.m
//  9.UIImageViewDemo
//
//  Created by 周泉 on 13-2-6.
//  Copyright (c) 2013年 www.iphonetrain.com 无限互联3G开发培训中心. All rights reserved.
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
    [self.window makeKeyAndVisible];
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(160-41/2.0, 100, 41, 30)];
    imgView.highlighted = YES; // flag
    imgView.image = [UIImage imageNamed:@"love_normal"];
    imgView.highlightedImage = [UIImage imageNamed:@"love_select"];
    [self.window addSubview:imgView];
    [imgView release];
    
    UIImageView *imgView1 = [[UIImageView alloc] initWithFrame:CGRectMake(110, 200, 100, 100)];
    imgView1.userInteractionEnabled = YES;
    imgView1.backgroundColor = [UIColor redColor];
    [self.window addSubview:imgView1];
    [imgView1 release];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(10, 20, 80, 30);
    [button1 setTitle:@"alertView" forState:UIControlStateNormal];
    [imgView1 addSubview:button1];
    
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

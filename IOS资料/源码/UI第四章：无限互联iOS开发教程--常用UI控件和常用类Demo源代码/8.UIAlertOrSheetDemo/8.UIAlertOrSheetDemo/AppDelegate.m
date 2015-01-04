//
//  AppDelegate.m
//  8.UIAlertOrSheetDemo
//
//  Created by 周泉 on 13-2-6.
//  Copyright (c) 2013年 www.iphonetrain.com 无限互联3G开发培训中心. All rights reserved.
//

#import "AppDelegate.h"
#import "AlertView.h"

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
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(10, 100, 140, 40);
    [button1 setTitle:@"alertView" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(showAlertView) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(240-70, 100, 140, 40);
    [button2 setTitle:@"actionSheet" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(showActionView) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:button2];
    
    return YES;
}

int identifier = 1;
- (void)showAlertView
{
//    UIAlertView *alertView = [[[UIAlertView alloc] initWithTitle:@"title" message:@"message" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"other1", @"other2", nil] autorelease];
//    [alertView show];
    
    AlertView *alertView = [[[AlertView alloc] initWithTitle:@"title" message:@"message" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"other1", @"other2", nil] autorelease];
    alertView.tag = identifier;
    [alertView show];
    identifier++;
}

- (void)showActionView
{
    UIActionSheet *actionSheet = [[[UIActionSheet alloc] initWithTitle:@"title" delegate:self cancelButtonTitle:@"cancel" destructiveButtonTitle:@"destructive" otherButtonTitles:@"other1", @"other2", @"other3", @"other3", nil] autorelease];
    [actionSheet showInView:self.window];
}

#pragma mark - AlertView Delegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"buttonIndex : %d", buttonIndex);
}

#pragma mark - ActionSheet Delegate
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"clickedButtonAtIndex : %d", buttonIndex);
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

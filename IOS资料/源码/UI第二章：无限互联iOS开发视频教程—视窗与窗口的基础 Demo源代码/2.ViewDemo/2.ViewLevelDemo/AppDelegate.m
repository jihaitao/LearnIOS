//
//  AppDelegate.m
//  2.ViewLevelDemo
//
//  Created by 周泉 on 12-11-28.
//  Copyright (c) 2012年 www.iPhonetrain.com 无限互联3G学院. All rights reserved.
//

#import "AppDelegate.h"
#import "CustomView.h"

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
    
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"View" owner:self options:nil];
    CustomView *cView = [views lastObject];
//    cView.alpha = 0.5;
    [self.window addSubview:cView];
    
//    CustomView *cView1 = [[CustomView alloc] initWithFrame:CGRectZero];
//    [self.window addSubview:cView1];
//    [cView1 release];
    
    // superView
    /*
    NSLog(@"cView superView : %p", [cView superview]);
    NSLog(@"window : %p", self.window);
    */
    
    // subViews
    /*
     if ([cView superview]) {
     NSLog(@"super view is window : %p", self.window);
     }
    NSLog(@"subViews : %d", [[cView subviews] count]);
    NSLog(@"subViews : %p", [[[cView.view1 subviews] lastObject] window]);
    NSLog(@"key window : %p", [UIApplication sharedApplication].keyWindow);
     */
    
    // code
    /*
    CustomView *customView = [[CustomView alloc] initWithFrame:CGRectMake(0, 0, 320, 240)];
    customView.tag = 101;
    customView.backgroundColor = [UIColor redColor];
    [self.window addSubview:customView];
    [customView release];
    
    CustomView *customView2 = [[CustomView alloc] initWithFrame:CGRectMake(0, 0, 320, 240)]; // 1
    customView2.tag = 102;
    customView2.backgroundColor = [UIColor yellowColor];
    [self.window addSubview:customView2];  // 2 
    [customView2 release];
    
    UIButton *changeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    changeButton.tag = 1;
    changeButton.frame = CGRectMake(80-120/2, 350, 120, 35);
    [changeButton setTitle:@"change" forState:UIControlStateNormal];
    [changeButton addTarget:self action:@selector(changeView) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:changeButton];
    
    UIButton *removeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    removeButton.tag = 1;
    removeButton.frame = CGRectMake(240-120/2, 350, 120, 35);
    [removeButton setTitle:@"remove" forState:UIControlStateNormal];
    [removeButton addTarget:self action:@selector(removeView) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:removeButton];
    
    for (int index = 0; index < [[self.window subviews] count]; index++) {
        NSLog(@"view tag : %d", [[[self.window subviews] objectAtIndex:index] tag]);
    }
    
    for (UIView *subview in [self.window subviews]) {
        NSLog(@"subView : %d", subview.tag);
    }
     */
    
    /*
    UIButton *changeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    changeButton.tag = 1;
    changeButton.frame = CGRectMake(320-120/2, 350, 120, 35);
    [changeButton setTitle:@"viewTag" forState:UIControlStateNormal];
    [changeButton addTarget:self action:@selector(changeView) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:changeButton];
    */
    
    // 仿射变换
    /*
    UIButton *changeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    changeButton.tag = 1;
    changeButton.frame = CGRectMake(320/2-200/2, 370, 200, 45);
    [changeButton setTitle:@"changeView" forState:UIControlStateNormal];
    [changeButton addTarget:self action:@selector(changeView) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:changeButton];
    */
    
    return YES;
}

- (void)changeViewScale
{
    UIView *view = [self.window viewWithTag:50];
    view.transform = CGAffineTransformScale(view.transform, 0.8, 0.8);
}

- (void)rotateView
{
    UIView *view = [self.window viewWithTag:50];
 view.transform = CGAffineTransformRotate(view.transform, 0.2);
}

- (void)transformView
{
    UIView *view = [self.window viewWithTag:50];
    view.transform = CGAffineTransformTranslate(view.transform, 50, 50);
}

- (void)removeView
{
    CustomView *cView = (CustomView *)[self.window viewWithTag:102];
    [cView removeFromSuperview]; // release
}

- (void)changeView
{
    CustomView *cView = (CustomView *)[self.window viewWithTag:1001];
    NSLog(@"subview : %d", [[cView subviews] count]);
    NSLog(@"subview : %@", [cView viewWithTag:1002]);
    [self.window bringSubviewToFront:cView];
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

//
//  RootViewController.m
//  3.ModalViewControllDemo
//
//  Created by 周泉 on 13-1-24.
//  Copyright (c) 2013年 www.iphonetrain.com 无限互联3G开发培训中心. All rights reserved.
//

#import "RootViewController.h"
#import "ModalViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor purpleColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.tag = 101;
    button.frame = CGRectMake(320/2-140/2, 80, 140, 40);
    [button setTitle:@"Present" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(presentModalVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(deviceOrientation:) name:UIDeviceOrientationDidChangeNotification object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)presentModalVC
{
    ModalViewController *modalVC = [[ModalViewController alloc] init];
    modalVC.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    if ([[UIDevice currentDevice].systemVersion floatValue] < 6.0) {
        
        [self presentModalViewController:modalVC animated:YES];
        
    }else {
        
        [self presentViewController:modalVC animated:YES completion:^{
            NSLog(@"call back");
        }];
    }
    
    [modalVC release];
}

#pragma mark - Orientation iOS 3.0_5.0
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return NO;
//    return (toInterfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Orientation iOS 6.0
- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

#pragma mark - Rotation
- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    NSLog(@"duration : %f", duration);
    
    UIView *button = [self.view viewWithTag:101];
    if (toInterfaceOrientation == UIInterfaceOrientationPortrait) {
        button.frame = CGRectMake(320/2-140/2, 80, 140, 40);
    }else {
        button.frame = CGRectMake(480/2-140/2, 80, 140, 40);
    }
}

- (void)deviceOrientation:(NSNotification *)notification
{
//    NSLog(@"userInfo : %@", [notification userInfo]);
//    NSLog(@"object : %@", [notification object]);
    UIDevice *device = (UIDevice *)[notification object];
    NSLog(@"device : %d", device.orientation);
}

@end

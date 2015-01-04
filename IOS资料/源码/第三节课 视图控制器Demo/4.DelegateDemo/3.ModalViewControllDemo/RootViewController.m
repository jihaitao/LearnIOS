//
//  RootViewController.m
//  3.ModalViewControllDemo
//
//  Created by 周泉 on 13-1-24.
//  Copyright (c) 2013年 www.iphonetrain.com 无限互联3G开发培训中心. All rights reserved.
//

#import "RootViewController.h"

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
    button.frame = CGRectMake(320/2-140/2, 200, 140, 40);
    [button setTitle:@"Present" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(presentModalVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(90, 100, 140, 40)];
    label.text = @"Hello world";
    label.tag = 102;
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    [label release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)presentModalVC
{
    ModalViewController *modalVC = [[ModalViewController alloc] init];
//    modalVC.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    // 设置代理
    modalVC.delegate = self;
    
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

#pragma mark - 
- (void)changeLabelText:(NSString *)text
{
    UILabel *label = (UILabel *)[self.view viewWithTag:102];
    label.text = text;
}

@end

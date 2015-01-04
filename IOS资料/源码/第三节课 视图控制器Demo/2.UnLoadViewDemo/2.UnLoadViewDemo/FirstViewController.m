//
//  FirstViewController.m
//  2.UnLoadViewDemo
//
//  Created by 周泉 on 13-1-24.
//  Copyright (c) 2013年 www.iphonetrain.com 无限互联3G开发培训中心. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"First";
    }
    return self;
}

- (void)loadView
{
    UIView *baseView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    baseView.backgroundColor = [UIColor orangeColor];
    self.view = baseView;
    [baseView release];
    
    _subView1 = [[UIView alloc] initWithFrame:CGRectMake(60, 100, 200, 200)];
    _subView1.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:_subView1];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillUnload
{
    [super viewWillUnload];
    NSLog(@"%s", __FUNCTION__);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    NSLog(@"%s", __FUNCTION__);
}

- (void)dealloc
{
    self.subView1 = nil;
    [super dealloc];
}

@end

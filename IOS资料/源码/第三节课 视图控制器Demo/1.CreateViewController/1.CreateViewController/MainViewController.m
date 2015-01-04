//
//  MainViewController.m
//  1.CreateViewController
//
//  Created by 周泉 on 13-1-24.
//  Copyright (c) 2013年 www.iphonetrain.com 无限互联3G开发培训中心. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)init
{
    self = [super init]; // 调用父类
    if (self) {
        
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // 创建视图控制器时，不要在初始化方法中，最与视图相关的动作
        // eg. NSLog(@"%@", self.view);
    }
    return self;
}

- (void)loadView
{
    // 第一种方式：调用父类的loadView
//    [super loadView];
    
    // 第二种方式：
    UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    view.backgroundColor = [UIColor orangeColor];
    self.view = view;  // 赋值
    [view release];
    
    // add subView
    UIView *subView = [[UIView alloc] initWithFrame:CGRectMake(60, 100, 200, 200)];
    subView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:subView];
    [subView release];
    
} // 如果存在nib或者storyborad，不要覆盖该方法；手动创建view时，则覆盖该方法

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1.view -> nil 2. getter method
//    NSLog(@"%@", self.view);
    
    // 访问网络或者其他的事情
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
} // 视图将要的出现

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"viewdidAppear");
} // 视图已经出现，此时视图已渲染完毕

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

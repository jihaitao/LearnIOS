//
//  SecondViewController.m
//  2.UnLoadViewDemo
//
//  Created by 周泉 on 13-1-24.
//  Copyright (c) 2013年 www.iphonetrain.com 无限互联3G开发培训中心. All rights reserved.
//

#import "SecondViewController.h"
#import "Other.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Second";
    }
    return self;
}

- (void)loadView
{
    UIView *baseView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    baseView.backgroundColor = [UIColor yellowColor];
    self.view = baseView;
    [baseView release];
    
    _subView2 = [[UIView alloc] initWithFrame:CGRectMake(60, 100, 200, 200)]; // 1
    _subView2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_subView2]; // 2
    
    // 1
    Other *otherView = [[Other alloc] initWithFrame:CGRectMake(110, 350, 100, 100)];
    otherView.backgroundColor = [UIColor brownColor];
    [self.view addSubview:otherView]; // 2
    [otherView release]; // 1
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillUnload
{
    [super viewWillUnload];
    NSLog(@"%s", __FUNCTION__);
} // 视图控制器的视图将要卸载

// self.view = nil;

- (void)viewDidUnload
{
    [super viewDidUnload];
    // NSLog(@"%@", self.view); // self.view -> nil  getter方法
    self.subView2 = nil;
    NSLog(@"%s", __FUNCTION__);
} // 视图控制器的视图已经卸载，需要卸载掉其他的子视图（强引用）

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // 拿到应用程序的窗口
    //[UIApplication sharedApplication].keyWindow;
    
    if ([self.view window] == nil) {
        
        self.subView2 = nil;
        self.view = nil;
        
    }// 当前的视图控制器中的视图不在当前窗口中
}

- (void)dealloc
{
    // 安全是释放
    self.subView2 = nil;
    [super dealloc];
}

@end

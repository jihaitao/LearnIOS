//
//  ModalViewController.h
//  3.ModalViewControllDemo
//
//  Created by 周泉 on 13-1-24.
//  Copyright (c) 2013年 www.iphonetrain.com 无限互联3G开发培训中心. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ModalViewControllerDelegate <NSObject>

@optional
- (void)changeLabelText:(NSString *)text;

@end

@interface ModalViewController : UIViewController
{
@private
    UITextField *_textField;
}

@property (nonatomic, assign) id <ModalViewControllerDelegate> delegate;

@end

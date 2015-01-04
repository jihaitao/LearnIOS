//
//  CustomView.m
//  2.ViewLevelDemo
//
//  Created by 周泉 on 12-11-28.
//  Copyright (c) 2012年 www.iPhonetrain.com 无限互联3G学院. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (void)awakeFromNib
{
    NSLog(@"awakeFromNib");
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame]; // [super init]
    if (self) {
        // Initialization code
//        NSArray
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame withOtherProperty:(int)property
{
    self = [super initWithFrame:frame]; // [super init]
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithName:(NSString *)name withCelue:(int)celue
{
    self = [super init];
    
    if (self) {
        
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"tag : %d", self.tag);
    [super dealloc];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

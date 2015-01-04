//
//  Car.m
//  2.ViewLevelDemo
//
//  Created by 周泉 on 12-11-28.
//  Copyright (c) 2012年 www.iPhonetrain.com 无限互联3G学院. All rights reserved.
//

#import "Car.h"

@implementation Car

- (id)initWithName:(NSString *)name
{
    self = [super init];
    
    if (self) {
        _name = [name copy];
    }
    return self;
}

@end

//
//  Audi.m
//  2.ViewLevelDemo
//
//  Created by 周泉 on 12-11-28.
//  Copyright (c) 2012年 www.iPhonetrain.com 无限互联3G学院. All rights reserved.
//

#import "Audi.h"

@implementation Audi

- (id)initWithName:(NSString *)name withDoor:(int)door
{
    self = [super initWithName:name];
    
    if (self) {
        _door = door;
    }
    return self;
}

@end

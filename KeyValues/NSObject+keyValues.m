//
//  NSObject+keyValues.m
//  KeyValues
//
//  Created by liicon on 2017/6/12.
//  Copyright © 2017年 max. All rights reserved.
//

#import "NSObject+keyValues.h"
#import <objc/runtime.h>

@implementation NSObject (keyValues)


- (NSArray *)getPropertys{
    u_int cout;
    objc_property_t *properties = class_copyPropertyList(self.class, &cout);
    NSMutableArray *array = [[NSMutableArray alloc] init];;
    for (int i = 0; i < cout; i++) {
        objc_property_t property = properties[i];
        NSString *name = [NSString stringWithFormat:@"%s",property_getName(property)];
        [array addObject:name];
    }
    free(properties);
    return array;
}

@end

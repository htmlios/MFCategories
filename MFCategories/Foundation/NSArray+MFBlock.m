//
//  NSArray+MFBlock.m
//  MFCategories-Demo
//
//  Created by XYZ on 2018/8/6.
//  Copyright © 2018年 XYZOrganization. All rights reserved.
//

#import "NSArray+MFBlock.h"

@implementation NSArray (MFBlock)

- (void)mf_each:(void (^ __nonnull)(id object))block {
    if (!block) {
        return;
    }
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        block(obj);
    }];
}

- (void)mf_eachWithIndex:(void (^ __nonnull)(NSUInteger index, id object))block {
    if (!block) {
        return;
    }
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        block(idx, obj);
    }];
}

@end

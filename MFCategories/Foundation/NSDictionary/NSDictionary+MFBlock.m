//
//  NSDictionary+MFBlock.m
//  MFCategories-Demo
//
//  Created by XYZ on 2018/8/8.
//  Copyright © 2018年 XYZOrganization. All rights reserved.
//

#import "NSDictionary+MFBlock.h"

@implementation NSDictionary (MFBlock)

- (void)mf_each:(void (^ __nonnull)(id key, id object))block {
    if (!block) {
        return;
    }
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        block(key, obj);
    }];
}

- (void)mf_eachKey:(void (^ __nonnull)(id key))block {
    if (!block) {
        return;
    }
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        block(key);
    }];
}

- (void)mf_eachValue:(void (^ __nonnull)(id value))block {
    if (!block) {
        return;
    }
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        block(obj);
    }];
}

@end

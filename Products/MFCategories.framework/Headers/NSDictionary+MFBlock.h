//
//  NSDictionary+MFBlock.h
//  MFCategories-Demo
//
//  Created by XYZ on 2018/8/8.
//  Copyright © 2018年 XYZOrganization. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (MFBlock)

- (void)mf_each:(void (^ __nonnull)(id key, id object))block;

- (void)mf_eachKey:(void (^ __nonnull)(id key))block;

- (void)mf_eachValue:(void (^ __nonnull)(id value))block;

@end

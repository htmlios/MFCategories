//
//  NSArray+MFBlock.h
//  MFCategories-Demo
//
//  Created by XYZ on 2018/8/6.
//  Copyright © 2018年 XYZOrganization. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (MFBlock)

- (void)mf_each:(void (^ __nonnull)(id object))block;

- (void)mf_eachWithIndex:(void (^ __nonnull)(NSUInteger index, id object))block;

@end

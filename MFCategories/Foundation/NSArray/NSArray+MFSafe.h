//
//  NSArray+MFSafe.h
//  MFCategories-Demo
//
//  Created by XYZ on 2018/8/2.
//  Copyright © 2018年 XYZOrganization. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (MFSafe)

- (id)mf_objectWithIndex:(NSUInteger)index;

- (NSString *)mf_stringWithIndex:(NSUInteger)index;

- (NSNumber *)mf_numberWithIndex:(NSUInteger)index;

- (NSArray *)mf_arrayWithIndex:(NSUInteger)index;

- (NSDictionary *)mf_dictionaryWithIndex:(NSUInteger)index;

- (NSInteger)mf_integerWithIndex:(NSUInteger)index;

- (NSUInteger)mf_uintegerWithIndex:(NSUInteger)index;

- (BOOL)mf_boolWithIndex:(NSUInteger)index;

- (int16_t)mf_int16WithIndex:(NSUInteger)index;

- (int32_t)mf_int32WithIndex:(NSUInteger)index;

- (double)mf_doubleWithIndex:(NSUInteger)index;

/** CG */
- (CGFloat)mf_CGFloatWithIndex:(NSUInteger)index;

- (CGPoint)mf_CGPointWithIndex:(NSUInteger)index;

- (CGSize)mf_CGSizeWithIndex:(NSUInteger)index;

- (CGRect)mf_CGRectWithIndex:(NSUInteger)index;

@end

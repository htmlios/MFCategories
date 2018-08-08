//
//  NSDictionary+MFSafe.h
//  MFCategories-Demo
//
//  Created by XYZ on 2018/8/2.
//  Copyright © 2018年 XYZOrganization. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (MFSafe)

- (BOOL)mf_containKey:(NSString *)key;

- (NSString *)mf_stringForKey:(NSString *)key;

- (NSNumber *)mf_numberForKey:(NSString *)key;

- (NSArray *)mf_arrayForKey:(NSString *)key;

- (NSDictionary *)mf_dictionaryForKey:(NSString *)key;

- (NSInteger)mf_integerForKey:(NSString *)key;

- (NSUInteger)mf_uintegerForKey:(NSString *)key;

- (BOOL)mf_boolForKey:(NSString *)key;

- (double)mf_doubleForKey:(NSString *)key;

- (long long)mf_longLongForKey:(NSString *)key;

- (unsigned long long)mf_unsignedLongLongForKey:(NSString *)key;

/** CG */

- (CGFloat)mf_CGFloatForKey:(NSString *)key;

- (CGPoint)mf_CGPointForKey:(NSString *)key;

- (CGSize)mf_CGSizeForKey:(NSString *)key;

- (CGRect)mf_CGRectForKey:(NSString *)key;

@end

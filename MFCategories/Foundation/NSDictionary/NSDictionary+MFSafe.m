//
//  NSDictionary+MFSafe.m
//  MFCategories-Demo
//
//  Created by XYZ on 2018/8/2.
//  Copyright © 2018年 XYZOrganization. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSDictionary+MFSafe.h"

@implementation NSDictionary (MFSafe)

- (BOOL)mf_containKey:(NSString *)key {
    return [self objectForKey:key] != nil;
}

- (NSString *)mf_stringForKey:(NSString *)key {
    id value = [self objectForKey:key];
    if ([self mf_isEmpty:value]) {
        return nil;
    }
    if ([value isKindOfClass:[NSString class]]) {
        return value;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value stringValue];
    }
    return nil;
}

- (NSNumber *)mf_numberForKey:(NSString *)key {
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNumber class]]) {
        return value;
    }
    if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter *format = [[NSNumberFormatter alloc] init];
        [format setNumberStyle:NSNumberFormatterDecimalStyle];
        return [format numberFromString:value];
    }
    return nil;
}

- (NSArray *)mf_arrayForKey:(NSString *)key {
    id value = [self objectForKey:key];
    if ([self mf_isEmpty:value]) {
        return nil;
    }
    if ([value isKindOfClass:[NSArray class]]) {
        return value;
    }
    return nil;
}

- (NSDictionary *)mf_dictionaryForKey:(NSString *)key {
    id value = [self objectForKey:key];
    if ([self mf_isEmpty:value]) {
        return nil;
    }
    if ([value isKindOfClass:[NSDictionary class]]) {
        return value;
    }
    return nil;
}

- (NSInteger)mf_integerForKey:(NSString *)key {
    id value = [self objectForKey:key];
    if ([self mf_isEmpty:value]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value integerValue];
    }
    return 0;
}

- (NSUInteger)mf_uintegerForKey:(NSString *)key {
    id value = [self objectForKey:key];
    if ([self mf_isEmpty:value]) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value unsignedIntegerValue];
    }
    if ([value isKindOfClass:[NSString class]]) {
        if ([value integerValue] >= 0) {
            return [value integerValue];
        }
    }
    return 0;
}

- (BOOL)mf_boolForKey:(NSString *)key {
    id value = [self objectForKey:key];
    if ([self mf_isEmpty:value]) {
        return NO;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value boolValue];
    }
    return NO;
}

- (double)mf_doubleForKey:(NSString *)key {
    id value = [self objectForKey:key];
    if ([self mf_isEmpty:value]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value doubleValue];
    }
    return 0;
}

- (long long)mf_longLongForKey:(NSString *)key {
    id value = [self objectForKey:key];
    if ([self mf_isEmpty:value]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value longLongValue];
    }
    return 0;
}

- (unsigned long long)mf_unsignedLongLongForKey:(NSString *)key {
    id value = [self objectForKey:key];
    if ([self mf_isEmpty:value]) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value unsignedLongLongValue];
    }
    if ([value isKindOfClass:[NSString class]]) {
        if ([value longLongValue] >= 0) {
            return [value longLongValue];
        }
    }
    return 0;
}

/** CG */

- (CGFloat)mf_CGFloatForKey:(NSString *)key {
    id value = [self objectForKey:key];
    if ([self mf_isEmpty:value]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value doubleValue];
    }
    return 0;
}

- (CGPoint)mf_CGPointForKey:(NSString *)key {
    id value = [self objectForKey:key];
    if ([self mf_isEmpty:value]) {
        return CGPointZero;
    }
    if ([value isKindOfClass:[NSString class]]) {
        return CGPointFromString(value);
    }
    return CGPointZero;
}

- (CGSize)mf_CGSizeForKey:(NSString *)key {
    id value = [self objectForKey:key];
    if ([self mf_isEmpty:value]) {
        return CGSizeZero;
    }
    if ([value isKindOfClass:[NSString class]]) {
        return CGSizeFromString(value);
    }
    return CGSizeZero;
}

- (CGRect)mf_CGRectForKey:(NSString *)key {
    id value = [self objectForKey:key];
    if ([self mf_isEmpty:value]) {
        return CGRectNull;
    }
    if ([value isKindOfClass:[NSString class]]) {
        return CGRectFromString(value);
    }
    return CGRectNull;
}

- (BOOL)mf_isEmpty:(id)object {
    if (object == nil || [object isKindOfClass:[NSNull class]]) {
        return YES;
    }
    return NO;
}

@end

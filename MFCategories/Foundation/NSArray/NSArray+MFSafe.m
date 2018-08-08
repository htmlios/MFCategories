//
//  NSArray+MFSafe.m
//  MFCategories-Demo
//
//  Created by XYZ on 2018/8/2.
//  Copyright © 2018年 XYZOrganization. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSArray+MFSafe.h"

@implementation NSArray (MFSafe)

- (id)mf_objectWithIndex:(NSUInteger)index {
    if (index < self.count) {
        return self[index];
    } else {
        return nil;
    }
}

- (NSString *)mf_stringWithIndex:(NSUInteger)index {
    id value = [self mf_objectWithIndex:index];
    if ([self mf_isEmpty:value] || [[value description] isEqualToString:@"<null>"]) {
        return nil;
    }
    if ([value isKindOfClass:[NSString class]]) {
        return (NSString *)value;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value stringValue];
    }
    return nil;
}

- (NSNumber *)mf_numberWithIndex:(NSUInteger)index {
    id value = [self mf_objectWithIndex:index];
    if ([value isKindOfClass:[NSNumber class]]) {
        return (NSNumber *)value;
    }
    if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter *format = [[NSNumberFormatter alloc] init];
        [format setNumberStyle:NSNumberFormatterDecimalStyle];
        return [format numberFromString:(NSString *)value];
    }
    return nil;
}

- (NSArray *)mf_arrayWithIndex:(NSUInteger)index {
    id value = [self mf_objectWithIndex:index];
    if ([self mf_isEmpty:value]) {
        return nil;
    }
    if ([value isKindOfClass:[NSArray class]]) {
        return value;
    }
    return nil;
}

- (NSDictionary *)mf_dictionaryWithIndex:(NSUInteger)index {
    id value = [self mf_objectWithIndex:index];
    if ([self mf_isEmpty:value]) {
        return nil;
    }
    if ([value isKindOfClass:[NSDictionary class]]) {
        return value;
    }
    return nil;
}

- (NSInteger)mf_integerWithIndex:(NSUInteger)index {
    id value = [self mf_objectWithIndex:index];
    if ([self mf_isEmpty:value]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value integerValue];
    }
    return 0;
}

- (NSUInteger)mf_uintegerWithIndex:(NSUInteger)index {
    id value = [self mf_objectWithIndex:index];
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

- (BOOL)mf_boolWithIndex:(NSUInteger)index {
    id value = [self mf_objectWithIndex:index];
    if ([self mf_isEmpty:value]) {
        return NO;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value boolValue];
    }
    return NO;
}

- (int16_t)mf_int16WithIndex:(NSUInteger)index {
    id value = [self mf_objectWithIndex:index];
    if ([self mf_isEmpty:value]) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value shortValue];
    }
    if ([value isKindOfClass:[NSString class]]) {
        return [value intValue];
    }
    return 0;
}

- (int32_t)mf_int32WithIndex:(NSUInteger)index {
    id value = [self mf_objectWithIndex:index];
    if ([self mf_isEmpty:value]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value intValue];
    }
    return 0;
}

- (double)mf_doubleWithIndex:(NSUInteger)index {
    id value = [self mf_objectWithIndex:index];
    if ([self mf_isEmpty:value]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value doubleValue];
    }
    return 0;
}

/** CG */

- (CGFloat)mf_CGFloatWithIndex:(NSUInteger)index {
    id value = [self mf_objectWithIndex:index];
    if ([self mf_isEmpty:value]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value doubleValue];
    }
    return 0;
}

- (CGPoint)mf_CGPointWithIndex:(NSUInteger)index {
    id value = [self mf_objectWithIndex:index];
    if ([self mf_isEmpty:value]) {
        return CGPointZero;
    }
    if ([value isKindOfClass:[NSString class]]) {
        return CGPointFromString(value);
    }
    return CGPointZero;
}

- (CGSize)mf_CGSizeWithIndex:(NSUInteger)index {
    id value = [self mf_objectWithIndex:index];
    if ([self mf_isEmpty:value]) {
        return CGSizeZero;
    }
    if ([value isKindOfClass:[NSString class]]) {
        return CGSizeFromString(value);
    }
    return CGSizeZero;
}

- (CGRect)mf_CGRectWithIndex:(NSUInteger)index {
    id value = [self mf_objectWithIndex:index];
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

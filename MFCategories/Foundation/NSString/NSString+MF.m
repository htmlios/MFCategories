//
//  NSString+MF.m
//  MFCategories-Demo
//
//  Created by XYZ on 2018/8/8.
//  Copyright © 2018年 XYZOrganization. All rights reserved.
//

#import "NSString+MF.h"

@implementation NSString (MF)

- (id)JSONObject {
    if ([self isKindOfClass:[NSString class]]) {
        return [NSJSONSerialization JSONObjectWithData:[((NSString *)self) dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    } else if ([self isKindOfClass:[NSData class]]) {
        return [NSJSONSerialization JSONObjectWithData:(NSData *)self options:kNilOptions error:nil];
    }
    NSError *theError = nil;
    id theObject = [NSJSONSerialization JSONObjectWithData:[self dataUsingEncoding:NSUTF8StringEncoding] options:0 error:&theError];
#ifdef DEBUG
    if (theError != nil) {
        NSLog(@"JSONObject error = %@", theError);
    }
#endif
    return theObject;
}

@end

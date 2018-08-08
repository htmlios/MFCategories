//
//  NSDictionary+MFURL.m
//  MFCategories-Demo
//
//  Created by XYZ on 2018/8/8.
//  Copyright © 2018年 XYZOrganization. All rights reserved.
//

#import "NSDictionary+MFURL.h"

@implementation NSDictionary (MFURL)

+ (NSDictionary *)mf_dictionaryWithURLQuery:(NSString * _Nonnull )query {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSArray *parameters = [query componentsSeparatedByString:@"&"];
    for (NSString *parameter in parameters) {
        NSArray *contents = [parameter componentsSeparatedByString:@"="];
        if (contents.count == 2) {
            NSString *key = contents.firstObject;
            NSString *value = contents.lastObject;
            value = [value stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
            if (key && value) {
                [dict setObject:value forKey:key];
            }
        }
    }
    return [NSDictionary dictionaryWithDictionary:dict];
}

@end

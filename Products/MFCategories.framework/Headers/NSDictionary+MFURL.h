//
//  NSDictionary+MFURL.h
//  MFCategories-Demo
//
//  Created by XYZ on 2018/8/8.
//  Copyright © 2018年 XYZOrganization. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (MFURL)

+ (NSDictionary *)mf_dictionaryWithURLQuery:(NSString * __nonnull)query;

@end

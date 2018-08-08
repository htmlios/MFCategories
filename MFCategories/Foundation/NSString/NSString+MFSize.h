//
//  NSString+MFSize.h
//  MFCategories-Demo
//
//  Created by XYZ on 2018/8/8.
//  Copyright © 2018年 XYZOrganization. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MFSize)

- (CGSize)mf_sizeWithFont:(UIFont *)font constrainedToSize:(CGSize)maxSize;

@end

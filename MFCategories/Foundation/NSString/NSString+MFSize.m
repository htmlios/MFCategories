//
//  NSString+MFSize.m
//  MFCategories-Demo
//
//  Created by XYZ on 2018/8/8.
//  Copyright © 2018年 XYZOrganization. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSString+MFSize.h"

@implementation NSString (MFSize)

- (CGSize)mf_sizeWithFont:(UIFont *)font constrainedToSize:(CGSize)maxSize {
    UIFont *textFont = font ? font : [UIFont systemFontOfSize:[UIFont systemFontSize]];
    CGSize textSize;
    
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.lineBreakMode = NSLineBreakByWordWrapping;
    
    NSDictionary *attributes = @{NSFontAttributeName : textFont,
                                 NSParagraphStyleAttributeName :paragraph};
    textSize = [self boundingRectWithSize:maxSize
                                  options:(NSStringDrawingUsesLineFragmentOrigin |
                                                        NSStringDrawingTruncatesLastVisibleLine)
                               attributes:attributes
                                  context:nil].size;
    return CGSizeMake(ceil(textSize.width), ceil(textSize.height));
}

@end

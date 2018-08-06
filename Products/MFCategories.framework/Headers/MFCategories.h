//
//  MFCategories.h
//  MFCategories
//
//  Created by XYZ on 2018/8/3.
//  Copyright © 2018年 XYZOrganization. All rights reserved.
//

#import <UIKit/UIKit.h>

#if __has_include(<MFCategories/MFCategories.h>)
//! Project version number for MFCategories.
FOUNDATION_EXPORT double MFCategoriesVersionNumber;

//! Project version string for MFCategories.
FOUNDATION_EXPORT const unsigned char MFCategoriesVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <MFCategories/PublicHeader.h>
#import <MFCategories/MFUIKit.h>
#import <MFCategories/MFFoundation.h>

#else
#import "MFUIKit.h"
#import "MFFoundation.h"

#endif

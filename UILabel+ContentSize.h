//
//  UILabel+ContentSize.h
//  Beta
//
//  Created by Joe Fabisevich on 12/22/13.
//  Copyright (c) 2013 mergesort. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ContentSize)

- (CGSize)contentSizeForWidth:(CGFloat)width;
- (CGSize)contentSize;
- (BOOL)isTruncated;

@end

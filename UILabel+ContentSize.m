//
//  UILabel+ContentSize.m
//  Beta
//
//  Created by Joe Fabisevich on 12/22/13.
//  Copyright (c) 2013 mergesort. All rights reserved.
//

#import "UILabel+ContentSize.h"


@implementation UILabel (ContentSize)

- (CGSize)contentSize
{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineBreakMode = self.lineBreakMode;
    paragraphStyle.alignment = self.textAlignment;
    
    CGRect contentFrame = [self.text boundingRectWithSize:CGSizeMake(CGRectGetWidth(self.bounds), MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:@{ NSFontAttributeName : self.font } context:nil];
    return contentFrame.size;
}

- (BOOL)isTruncated
{
    CGSize size = [self.text boundingRectWithSize:CGSizeMake(self.bounds.size.width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : self.font} context:nil].size;
    
    return (size.height > self.frame.size.height);
}


@end
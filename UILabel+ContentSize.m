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
    NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineBreakMode = self.lineBreakMode;
    paragraphStyle.alignment = self.textAlignment;
    
    NSDictionary * attributes = @{
                                   NSFontAttributeName : self.font,
                                   NSParagraphStyleAttributeName : paragraphStyle
                                 };

    CGSize contentSize = [self.text boundingRectWithSize:self.frame.size options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
    return contentSize;
}

@end
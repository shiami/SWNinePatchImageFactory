//
//  SWNinePatchImageFactory.h
//  SWNinePatchImageFactory
//
//  Created by shiami on 7/10/14.
//  Copyright (c) 2014 TaccoTap. All rights reserved.

#import <UIKit/UIKit.h>

@interface SWNinePatchImageFactory : NSObject

+ (UIImage*)createResizableNinePatchImageNamed:(NSString*)name;
+ (UIImage*)createResizableNinePatchImage:(UIImage*)image;

@end

#pragma mark - UIImage Extension

@interface UIImage (Crop)

- (UIImage*)crop:(CGRect)rect;

@end

@implementation UIImage (Crop)

- (UIImage*)crop:(CGRect)rect
{
    rect = CGRectMake(rect.origin.x * self.scale,
                      rect.origin.y * self.scale,
                      rect.size.width * self.scale,
                      rect.size.height * self.scale);

    CGImageRef imageRef = CGImageCreateWithImageInRect([self CGImage], rect);
    UIImage* result = [UIImage imageWithCGImage:imageRef
                                          scale:self.scale
                                    orientation:self.imageOrientation];
    CGImageRelease(imageRef);
    return result;
}

@end
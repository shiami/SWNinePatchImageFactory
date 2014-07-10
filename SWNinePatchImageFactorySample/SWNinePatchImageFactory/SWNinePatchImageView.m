//
//  SWNinePatchImageView.m
//  SWNinePatchImageFactory
//
//  Created by shiami on 7/10/14.
//  Copyright (c) 2014 TaccoTap. All rights reserved.

#import "SWNinePatchImageView.h"

#import "SWNinePatchImageFactory.h"

@interface SWNinePatchImageView (Private)
- (void)initNinePatchImage;
@end

@implementation SWNinePatchImageView

- (id)initWithCoder:(NSCoder*)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        // init
        [self initNinePatchImage];
    }
    return self;
}

- (id)initWithImage:(UIImage*)image
{
    self = [super initWithImage:image];
    if (self) {
        // init
        [self initNinePatchImage];
    }
    return self;
}

- (void)setImage:(UIImage*)image
{
    UIImage* resizableImage = [SWNinePatchImageFactory createResizableNinePatchImage:self.image];
    [super setImage:resizableImage];
}

#pragma mark - Private

- (void)initNinePatchImage
{
    UIImage* resizableImage = [SWNinePatchImageFactory createResizableNinePatchImage:self.image];
    [super setImage:resizableImage];
}

@end

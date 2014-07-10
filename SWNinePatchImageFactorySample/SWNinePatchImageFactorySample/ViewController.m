//
//  ViewController.m
//  SWNinePatchImageFactory
//
//  Created by shiami on 7/10/14.
//  Copyright (c) 2014 TaccoTap. All rights reserved.
//

#import "ViewController.h"

#import "SWNinePatchImageFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UIImage* resizableImage = [SWNinePatchImageFactory createResizableNinePatchImageNamed:@"button.9"];
    [self.imageView setImage:resizableImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

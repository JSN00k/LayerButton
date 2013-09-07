//
//  JTAViewController.m
//  LayerButton
//
//  Created by James Snook on 07/09/2013.
//  Copyright (c) 2013 James Snook. All rights reserved.
//

#import "JTAViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "JTAMovableLayersView.h"

@interface JTAViewController ()

@end

@implementation JTAViewController
{
  CALayer *movable;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  JTAMovableLayersView *myView = (JTAMovableLayersView *)[self view];
  movable = [[CALayer alloc] init];
  [movable setFrame:CGRectMake (128, 128, 256, 256)];
  [movable setBackgroundColor:[[UIColor redColor] CGColor]];
  [[myView layer] addSublayer:movable];
  
  UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  [button setTitle:@"test" forState:UIControlStateNormal];
  [button addTarget:self action:@selector(buttonPressed:)
   forControlEvents:UIControlEventTouchUpInside];
  [button setFrame:CGRectMake (180, 180, 75, 25)];
  [myView addSubview:button];
  [myView setMovableLayerViews:[NSArray arrayWithObject:button]];
  [[button layer] setPosition:CGPointMake(64, 64)];
  [movable addSublayer:[button layer]];
}

- (void)buttonPressed:(id)sender
{
  [movable setPosition:CGPointMake(random () % 768, random () % 1024)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
  NSLog (@"got here");
}

@end

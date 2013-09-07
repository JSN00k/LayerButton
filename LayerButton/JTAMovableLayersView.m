//
//  JTAMovableLayersView.m
//  LayerButton
//
//  Created by James Snook on 07/09/2013.
//  Copyright (c) 2013 James Snook. All rights reserved.
//

#import "JTAMovableLayersView.h"

@implementation JTAMovableLayersView

@synthesize movableLayerViews;

- (NSArray *)subviews
{
  NSMutableArray *array = [[super subviews] mutableCopy];
  [array addObjectsFromArray:movableLayerViews];
  return array;
}


@end

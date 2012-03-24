/*
 * ThemeDescriptors.j
 * BBBlocksKit
 *
 * Created by You on March 24, 2012.
 * Copyright 2012, Your Company All rights reserved.
 */

@import <BlendKit/BKThemeDescriptor.j>


@implementation BBBlocksKitThemeDescriptor : BKThemeDescriptor
{
}

+ (CPString)themeName
{
    return @"BBBlocksKit";
}

+ (CPButton)themedButton
{
    var button = [[CPButton alloc] initWithFrame:CGRectMake(0.0, 0.0, 100.0, 20.0)];
    
    [button setValue:[CPColor blueColor] forThemeAttribute:@"bezel-color"];
    [button setValue:[CPColor greenColor] forThemeAttribute:@"bezel-color" inState:CPThemeStateHighlighted];

    [button setValue:[CPColor redColor] forThemeAttribute:@"text-color"];
    [button setValue:[CPColor yellowColor] forThemeAttribute:@"text-color" inState:CPThemeStateHighlighted];

    [button setTitle:@"Yikes!"];
    
    return button;
}

@end

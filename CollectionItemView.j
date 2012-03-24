//
//  CollectionItem.m
//  bbblocks
//
//  Created by Matevž Mihalič on 23. 03. 12.
//  Copyright (c) 2012 280 North, Inc. All rights reserved.
//

@implementation CollectionItemView : CPBox
{
    CPImage         image;
    CPImageView     imageView;
}

- (void)setRepresentedObject:(JSObject)obj
{
    if(!imageView)
    {
        imageView = [[CPImageView alloc] initWithFrame:CGRectMakeCopy([self bounds])];
        [imageView setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];
        [imageView setImageScaling:CPScaleProportionally];
        //[imageView setHasShadow:YES];
        [self addSubview:imageView];
    }
    
    [image setDelegate:nil];
    
    console.log(obj);
    
    image = [[CPImage alloc] initWithContentsOfFile:obj.image_url];

    [image setDelegate:self];
}

- (void)imageDidLoad:(CPImage)anImage
{
    [imageView setImage:anImage];
}

@end

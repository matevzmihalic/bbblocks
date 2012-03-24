//
//  CollectionItem.m
//  bbblocks
//
//  Created by Matevž Mihalič on 23. 03. 12.
//  Copyright (c) 2012 280 North, Inc. All rights reserved.
//
@import "Frameworks/LPKit/LPViewAnimation.j"

@implementation CollectionItemView : CPBox
{
    CPImage         image;
    CPImageView     imageView;
    CPProgressIndicator progress;
    
    CPView overlay;
}

- (void)setRepresentedObject:(JSObject)obj
{
    if(!imageView)
    {
        var size = [self bounds].size;
        imageView = [[CPImageView alloc] initWithFrame:CGRectMakeCopy([self bounds])];
        [imageView setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];
        [imageView setImageScaling:CPScaleProportionally];
        //[imageView setHasShadow:YES];
        [self addSubview:imageView];
        
        overlay = [[CPView alloc] initWithFrame: CGRectMake((size.width-400)/2, (size.height-300)/2, 400, 300)];
        [overlay setBackgroundColor:[CPColor colorWithWhite: 1.0 alpha: 0.9]];
        [overlay setAlphaValue: 0.0];
        [self addSubview: overlay];
        
        var title = [CPTextField labelWithTitle: obj.title];
        [title setBoundsOrigin: CGPointMake(10, 10)];
        [title setFont: [CPFont boldFontWithName: @"Helvetica" size: 20]];
        [title sizeToFit];
        [overlay addSubview: title];
        
        
        progress = [[CPProgressIndicator alloc] initWithFrame:CGRectMake(size.width/2-32.0, size.height/2-32.0, 64, 64)];
        [progress setControlSize:CPRegularControlSize];
        [progress setStyle:CPProgressIndicatorSpinningStyle];
        [self addSubview:progress];
    }
    [progress startAnimation:self];
    
    [image setDelegate:nil];
    [imageView setAlphaValue:0.0];
    
    
    image = [[CPImage alloc] initWithContentsOfFile:obj.image_url];

    [image setDelegate:self];
}

- (void)imageDidLoad:(CPImage)anImage
{
    [imageView setImage:anImage];
     
    animation = [[LPViewAnimation alloc] initWithViewAnimations:[
        {
            @"target": imageView,
            @"animations": [
                [LPFadeAnimationKey, 0.0, 1.0]
            ]
        },
        {
            @"target": progress,
            @"animations": [
                [LPFadeAnimationKey, 1.0, 0.0]
            ]
        }
    ]];
    [animation setAnimationCurve:CPAnimationEaseInOut];
    [animation setDuration:1.0];
    [animation setShouldUseCSSAnimations:YES];
    [animation startAnimation];

}

- (void)mouseEntered:(CPEvent)anEvent
{
    animation = [[LPViewAnimation alloc] initWithViewAnimations:[
        {
            @"target": overlay,
            @"animations": [
                [LPFadeAnimationKey, 0.0, 1.0]
            ]
        }
    ]];
    [animation setAnimationCurve:CPAnimationEaseInOut];
    [animation setDuration:0.5];
    [animation setShouldUseCSSAnimations:YES];
    [animation startAnimation];
}

- (void)mouseExited:(CPEvent)anEvent
{
    animation = [[LPViewAnimation alloc] initWithViewAnimations:[
        {
            @"target": overlay,
            @"animations": [
                [LPFadeAnimationKey, 1.0, 0.0]
            ]
        }
    ]];
    [animation setAnimationCurve:CPAnimationEaseInOut];
    [animation setDuration:0.5];
    [animation setShouldUseCSSAnimations:YES];
    [animation startAnimation];
}

@end

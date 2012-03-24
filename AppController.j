/*
 * AppController.j
 * bbblocks
 *
 * Created by You on March 12, 2012.
 * Copyright 2012, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>
@import "CollectionItem.j"


@implementation AppController : CPObject
{
    CPWindow    theWindow; //this "outlet" is connected automatically by the Cib
    @outlet CPCollectionView cView;
    @outlet CollectionItem cItem;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    // This is called when the application is done loading.
}

- (void)awakeFromCib
{
    // This is called when the cib is done loading.
    // You can implement this method on any object instantiated from a Cib.
    // It's a useful hook for setting up current UI values, and other things.

    // In this case, we want the window from Cib to become our full browser window
    [theWindow setFullPlatformWindow:YES];
    
    [cView setItemPrototype:cItem];
    
    //[photosets setObject:images forKey:aString];
    
    [cView setMinItemSize:CGSizeMake(410, 310)];
    [cView setMaxItemSize:CGSizeMake(410, 310)];
    
    [cView setContent:[CPArray arrayWithObjects:@"key1", @"key2", @"John", @"Joe", nil]];
    [cView setSelectionIndexes:[CPIndexSet indexSetWithIndex:1]];
}

@end

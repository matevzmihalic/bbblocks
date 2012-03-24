/*
 * AppController.j
 * bbblocks
 *
 * Created by You on March 12, 2012.
 * Copyright 2012, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>
@import "CollectionItemView.j"


@implementation AppController : CPObject
{
    CPWindow    theWindow; //this "outlet" is connected automatically by the Cib
    @outlet CPView mainView;
    @outlet CollectionView cView;
    CPArray     shots;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var bundle = [CPBundle mainBundle],
        blend = [[CPThemeBlend alloc] initWithContentsOfURL: [bundle pathForResource:@"BBBlocksKit.blend"]];

    [blend loadWithDelegate:self];
}

- (void)awakeFromCib
{
    // This is called when the cib is done loading.
    // You can implement this method on any object instantiated from a Cib.
    // It's a useful hook for setting up current UI values, and other things.

    // In this case, we want the window from Cib to become our full browser window
    [theWindow setFullPlatformWindow:YES];
    
    //[cView setItemPrototype:[[CollectionItem alloc] initWithCibName:@"CollectionItem" bundle:[CPBundle mainBundle]]];
    
    //[photosets setObject:images forKey:aString];
    
    [cView setMinItemSize:CGSizeMake(440, 340)];
    [cView setMaxItemSize:CGSizeMake(440, 340)];
    [cView setSelectionIndexes:[CPIndexSet indexSet]];
    [cView setVerticalMargin:20.0];
    
    [cView setBackgroundColor:[CPColor colorWithPatternImage:[[CPImage alloc] initWithContentsOfFile:[[CPBundle mainBundle] pathForResource:"tile.gif"]]]];
    
    [self addShots:
{"total":750,"shots":[{"player":{"shots_count":117,"twitter_screen_name":"kellianderson","avatar_url":"http://dribbble.s3.amazonaws.com/users/22236/avatars/original/avartar.jpg?1305138077","likes_received_count":12048,"name":"kellianderson","created_at":"2011/03/08 15:02:54 -0500","location":"Brooklyn, NY","following_count":103,"likes_count":282,"website_url":"http://www.kellianderson.com","username":"kellianderson","url":"http://dribbble.com/kellianderson","rebounds_count":18,"draftees_count":3,"id":22236,"drafted_by_player_id":7179,"followers_count":3777,"comments_received_count":1146,"comments_count":253,"rebounds_received_count":18},"short_url":"http://drbl.in/dwSO","created_at":"2012/03/23 12:04:55 -0400","image_url":"http://dribbble.com/system/users/22236/screenshots/483640/logo.jpg?1332518780","title":"Logo","likes_count":317,"rebound_source_id":null,"url":"http://dribbble.com/shots/483640-Logo","rebounds_count":0,"id":483640,"image_teaser_url":"http://dribbble.com/system/users/22236/screenshots/483640/logo_teaser.jpg?1332518780","height":300,"views_count":2352,"comments_count":27,"width":400},{"player":{"shots_count":212,"twitter_screen_name":"RypeArts","avatar_url":"http://dribbble.s3.amazonaws.com/users/3460/avatars/original/avatar.png?1309533186","likes_received_count":26819,"name":"Ryan Putnam","created_at":"2010/07/16 08:48:16 -0400","location":"Colorado Springs, CO","following_count":246,"likes_count":4545,"website_url":"http://rypearts.com","username":"RypeArts","url":"http://dribbble.com/RypeArts","rebounds_count":69,"draftees_count":8,"id":3460,"drafted_by_player_id":431,"followers_count":5630,"comments_received_count":2786,"comments_count":479,"rebounds_received_count":83},"short_url":"http://drbl.in/dwSi","created_at":"2012/03/23 11:36:08 -0400","image_url":"http://dribbble.com/system/users/3460/screenshots/483608/amperbranch_stamps.png?1332517030","title":"Amperbranch Stamps","likes_count":162,"rebound_source_id":null,"url":"http://dribbble.com/shots/483608-Amperbranch-Stamps","rebounds_count":0,"id":483608,"image_teaser_url":"http://dribbble.com/system/users/3460/screenshots/483608/amperbranch_stamps_teaser.png?1332517030","height":300,"views_count":992,"comments_count":15,"width":400},{"player":{"shots_count":83,"twitter_screen_name":"yaksquatch","avatar_url":"http://dribbble.s3.amazonaws.com/users/4467/avatars/original/jrspaceman-id.jpg?1315235969","likes_received_count":8139,"name":"Matt Kaufenberg","created_at":"2010/09/17 10:08:22 -0400","location":"Minnesota","following_count":285,"likes_count":504,"website_url":"http://www.illustrationaday.com","username":"yaksquatch","url":"http://dribbble.com/yaksquatch","rebounds_count":11,"draftees_count":7,"id":4467,"drafted_by_player_id":811,"followers_count":2458,"comments_received_count":1051,"comments_count":359,"rebounds_received_count":14},"short_url":"http://drbl.in/dwUE","created_at":"2012/03/23 13:21:35 -0400","image_url":"http://dribbble.com/system/users/4467/screenshots/483734/basketball.jpg?1332524159","title":"Dribbble Monster","likes_count":158,"rebound_source_id":null,"url":"http://dribbble.com/shots/483734-Dribbble-Monster","rebounds_count":0,"id":483734,"image_teaser_url":"http://dribbble.com/system/users/4467/screenshots/483734/basketball_teaser.jpg?1332524159","height":300,"views_count":873,"comments_count":21,"width":400},{"player":{"shots_count":216,"twitter_screen_name":"scottallenhill","avatar_url":"http://dribbble.s3.amazonaws.com/users/4647/avatars/original/Screen shot 2012-02-13 at 2.44.25 PM.png?1329169569","likes_received_count":26009,"name":"Scott Hill","created_at":"2010/09/30 19:30:15 -0400","location":"Denver","following_count":582,"likes_count":2454,"website_url":"http://www.foundrycollective.com","username":"ScottAllenHill","url":"http://dribbble.com/ScottAllenHill","rebounds_count":52,"draftees_count":10,"id":4647,"drafted_by_player_id":865,"followers_count":5602,"comments_received_count":2831,"comments_count":610,"rebounds_received_count":56},"short_url":"http://drbl.in/dwZk","created_at":"2012/03/23 16:05:46 -0400","image_url":"http://dribbble.com/system/users/4647/screenshots/483974/drib.jpg?1332533198","title":"TOP it is","likes_count":137,"rebound_source_id":483913,"url":"http://dribbble.com/shots/483974-TOP-it-is","rebounds_count":0,"id":483974,"image_teaser_url":"http://dribbble.com/system/users/4647/screenshots/483974/drib_teaser.jpg?1332533198","height":300,"views_count":703,"comments_count":30,"width":400},{"player":{"shots_count":177,"twitter_screen_name":"timboelaars","avatar_url":"http://dribbble.s3.amazonaws.com/users/2489/avatars/original/avatar.jpeg?1321296341","likes_received_count":25979,"name":"Tim Boelaars","created_at":"2010/06/03 05:08:59 -0400","location":"Amsterdam","following_count":407,"likes_count":5179,"website_url":"http://timboelaars.nl","username":"timboelaars","url":"http://dribbble.com/timboelaars","rebounds_count":45,"draftees_count":10,"id":2489,"drafted_by_player_id":1985,"followers_count":6197,"comments_received_count":2728,"comments_count":1282,"rebounds_received_count":81},"short_url":"http://drbl.in/dwRy","created_at":"2012/03/23 11:11:11 -0400","image_url":"http://dribbble.com/system/users/2489/screenshots/483572/hybrid-gas-electric.jpg?1332515484","title":"Hybrid Gas Electric.","likes_count":136,"rebound_source_id":null,"url":"http://dribbble.com/shots/483572-Hybrid-Gas-Electric-","rebounds_count":0,"id":483572,"image_teaser_url":"http://dribbble.com/system/users/2489/screenshots/483572/hybrid-gas-electric_teaser.jpg?1332515484","height":300,"views_count":770,"comments_count":10,"width":400},{"player":{"shots_count":119,"twitter_screen_name":"JustinMezzell","avatar_url":"http://dribbble.s3.amazonaws.com/users/13774/avatars/original/Me.jpg?1305134584","likes_received_count":18106,"name":"Justin Mezzell","created_at":"2011/01/26 01:58:50 -0500","location":"Orlando, FL","following_count":178,"likes_count":1512,"website_url":"http://justinmezzell.com/","username":"JustinMezzell","url":"http://dribbble.com/JustinMezzell","rebounds_count":3,"draftees_count":3,"id":13774,"drafted_by_player_id":5753,"followers_count":4295,"comments_received_count":1661,"comments_count":442,"rebounds_received_count":7},"short_url":"http://drbl.in/dwSy","created_at":"2012/03/23 11:47:56 -0400","image_url":"http://dribbble.com/system/users/13774/screenshots/483624/_119.jpg?1332517866","title":"_119","likes_count":122,"rebound_source_id":null,"url":"http://dribbble.com/shots/483624--119","rebounds_count":0,"id":483624,"image_teaser_url":"http://dribbble.com/system/users/13774/screenshots/483624/_119_teaser.jpg?1332517866","height":300,"views_count":791,"comments_count":11,"width":400},{"player":{"shots_count":88,"twitter_screen_name":"kadasarva_real","avatar_url":"http://dribbble.s3.amazonaws.com/users/30593/avatars/original/dribble_upic1.jpg?1305140614","likes_received_count":8485,"name":"Alex Volkov","created_at":"2011/04/25 13:17:24 -0400","location":"Ukraine","following_count":1063,"likes_count":1051,"website_url":"http://www.kadasarva.com","username":"kadasarva","url":"http://dribbble.com/kadasarva","rebounds_count":0,"draftees_count":2,"id":30593,"drafted_by_player_id":22,"followers_count":2222,"comments_received_count":594,"comments_count":110,"rebounds_received_count":0},"short_url":"http://drbl.in/dwQf","created_at":"2012/03/23 10:08:13 -0400","image_url":"http://dribbble.com/system/users/30593/screenshots/483501/tablet.jpg?1332511720","title":"Tablet","likes_count":136,"rebound_source_id":null,"url":"http://dribbble.com/shots/483501-Tablet","rebounds_count":0,"id":483501,"image_teaser_url":"http://dribbble.com/system/users/30593/screenshots/483501/tablet_teaser.jpg?1332511720","height":300,"views_count":1108,"comments_count":7,"width":400},{"player":{"shots_count":216,"twitter_screen_name":"scottallenhill","avatar_url":"http://dribbble.s3.amazonaws.com/users/4647/avatars/original/Screen shot 2012-02-13 at 2.44.25 PM.png?1329169569","likes_received_count":26009,"name":"Scott Hill","created_at":"2010/09/30 19:30:15 -0400","location":"Denver","following_count":582,"likes_count":2454,"website_url":"http://www.foundrycollective.com","username":"ScottAllenHill","url":"http://dribbble.com/ScottAllenHill","rebounds_count":52,"draftees_count":10,"id":4647,"drafted_by_player_id":865,"followers_count":5602,"comments_received_count":2831,"comments_count":610,"rebounds_received_count":56},"short_url":"http://drbl.in/dwUa","created_at":"2012/03/23 13:02:18 -0400","image_url":"http://dribbble.com/system/users/4647/screenshots/483704/screen_shot_2012-03-23_at_4.17.38_am.png?1332522195","title":"Don t Get Lost in the City","likes_count":111,"rebound_source_id":null,"url":"http://dribbble.com/shots/483704-Don-t-Get-Lost-in-the-City","rebounds_count":0,"id":483704,"image_teaser_url":"http://dribbble.com/system/users/4647/screenshots/483704/screen_shot_2012-03-23_at_4.17.38_am_teaser.png?1332522195","height":300,"views_count":618,"comments_count":13,"width":400},{"player":{"shots_count":122,"twitter_screen_name":"drewwilson","avatar_url":"http://dribbble.s3.amazonaws.com/users/264/avatars/original/drew-avatar.jpg?1305129241","likes_received_count":13769,"name":"Drew Wilson","created_at":"2009/12/15 19:21:21 -0500","location":"Carlsbad, CA","following_count":141,"likes_count":449,"website_url":"http://www.drewwilson.com","username":"drewwilson","url":"http://dribbble.com/drewwilson","rebounds_count":30,"draftees_count":13,"id":264,"drafted_by_player_id":11,"followers_count":5654,"comments_received_count":1901,"comments_count":651,"rebounds_received_count":59},"short_url":"http://drbl.in/dxfn","created_at":"2012/03/23 19:44:54 -0400","image_url":"http://dribbble.com/system/users/264/screenshots/484289/dribbb.jpg?1332546956","title":"Dialoggs - How To","likes_count":135,"rebound_source_id":null,"url":"http://dribbble.com/shots/484289-Dialoggs-How-To","rebounds_count":0,"id":484289,"image_teaser_url":"http://dribbble.com/system/users/264/screenshots/484289/dribbb_teaser.jpg?1332546956","height":300,"views_count":1784,"comments_count":26,"width":400},{"player":{"shots_count":32,"twitter_screen_name":"darylbro","avatar_url":"http://dribbble.s3.amazonaws.com/users/21845/avatars/original/7ac92af4266ce5b2bc6354f6583e0c84.png?1331102785","likes_received_count":8567,"name":"Daryl Ginn","created_at":"2011/03/07 00:39:00 -0500","location":"The moon","following_count":102,"likes_count":464,"website_url":null,"username":"daryl","url":"http://dribbble.com/daryl","rebounds_count":8,"draftees_count":7,"id":21845,"drafted_by_player_id":4826,"followers_count":2844,"comments_received_count":650,"comments_count":345,"rebounds_received_count":14},"short_url":"http://drbl.in/dwUR","created_at":"2012/03/23 13:30:52 -0400","image_url":"http://dribbble.com/system/users/21845/screenshots/483747/g_-p.png?1332524260","title":"Google+ Mac App [photos]","likes_count":145,"rebound_source_id":null,"url":"http://dribbble.com/shots/483747-Google-Mac-App-photos-","rebounds_count":0,"id":483747,"image_teaser_url":"http://dribbble.com/system/users/21845/screenshots/483747/g_-p_teaser.png?1332524260","height":300,"views_count":1434,"comments_count":22,"width":400},{"player":{"shots_count":259,"twitter_screen_name":"Serhos","avatar_url":"http://dribbble.s3.amazonaws.com/users/6037/avatars/original/me.jpg?1314973328","likes_received_count":18179,"name":"Sergey Shapiro","created_at":"2010/12/08 11:30:16 -0500","location":"Moscow, Russian Federation","following_count":370,"likes_count":2868,"website_url":"http://www.sergeyshapiro.com","username":"sergeyshapiro","url":"http://dribbble.com/sergeyshapiro","rebounds_count":92,"draftees_count":9,"id":6037,"drafted_by_player_id":20,"followers_count":3363,"comments_received_count":3290,"comments_count":1476,"rebounds_received_count":90},"short_url":"http://drbl.in/dwTR","created_at":"2012/03/23 12:50:05 -0400","image_url":"http://dribbble.com/system/users/6037/screenshots/483695/when.jpg?1332521508","title":"When you know...","likes_count":96,"rebound_source_id":475186,"url":"http://dribbble.com/shots/483695-When-you-know-","rebounds_count":0,"id":483695,"image_teaser_url":"http://dribbble.com/system/users/6037/screenshots/483695/when_teaser.jpg?1332521508","height":300,"views_count":587,"comments_count":16,"width":400},{"player":{"shots_count":104,"twitter_screen_name":null,"avatar_url":"http://dribbble.s3.amazonaws.com/users/21371/avatars/original/Handy.jpg?1305137817","likes_received_count":6422,"name":"Bennie Kirksey Wells","created_at":"2011/03/04 10:06:02 -0500","location":"Brooklyn","following_count":45,"likes_count":65,"website_url":"http://www.raisenochicken.com","username":"raisenochicken","url":"http://dribbble.com/raisenochicken","rebounds_count":21,"draftees_count":0,"id":21371,"drafted_by_player_id":19540,"followers_count":1712,"comments_received_count":660,"comments_count":165,"rebounds_received_count":21},"short_url":"http://drbl.in/dwWd","created_at":"2012/03/23 14:14:05 -0400","image_url":"http://dribbble.com/system/users/21371/screenshots/483811/new.jpg?1332526530","title":"New Graphic Tease","likes_count":99,"rebound_source_id":null,"url":"http://dribbble.com/shots/483811-New-Graphic-Tease","rebounds_count":0,"id":483811,"image_teaser_url":"http://dribbble.com/system/users/21371/screenshots/483811/new_teaser.jpg?1332526530","height":300,"views_count":792,"comments_count":17,"width":400},{"player":{"shots_count":36,"twitter_screen_name":"Icondeposit","avatar_url":"http://dribbble.s3.amazonaws.com/users/29459/avatars/original/logoforrst.jpg?1307875171","likes_received_count":7010,"name":"Matt Gentile","created_at":"2011/04/20 04:54:57 -0400","location":"New Hyde Park, New York","following_count":1500,"likes_count":2681,"website_url":"http://icondeposit.com","username":"Icondeposit","url":"http://dribbble.com/Icondeposit","rebounds_count":5,"draftees_count":6,"id":29459,"drafted_by_player_id":12259,"followers_count":2653,"comments_received_count":586,"comments_count":398,"rebounds_received_count":24},"short_url":"http://drbl.in/dxhb","created_at":"2012/03/23 22:05:05 -0400","image_url":"http://dribbble.com/system/users/29459/screenshots/484381/button_ui_kit.jpg?1332555202","title":"Button UI Kit","likes_count":112,"rebound_source_id":null,"url":"http://dribbble.com/shots/484381-Button-UI-Kit","rebounds_count":0,"id":484381,"image_teaser_url":"http://dribbble.com/system/users/29459/screenshots/484381/button_ui_kit_teaser.jpg?1332555202","height":300,"views_count":812,"comments_count":18,"width":400},{"player":{"shots_count":177,"twitter_screen_name":"bobby","avatar_url":"http://dribbble.s3.amazonaws.com/users/627/avatars/original/usa_avatar_3.png?1315878266","likes_received_count":11727,"name":"Bobby McKenna","created_at":"2010/01/19 22:42:33 -0500","location":"Philadelphia, PA","following_count":433,"likes_count":581,"website_url":"http://www.bobbymckenna.us","username":"bobbymckenna","url":"http://dribbble.com/bobbymckenna","rebounds_count":48,"draftees_count":12,"id":627,"drafted_by_player_id":null,"followers_count":3898,"comments_received_count":2260,"comments_count":715,"rebounds_received_count":82},"short_url":"http://drbl.in/dwSm","created_at":"2012/03/23 11:38:25 -0400","image_url":"http://dribbble.com/system/users/627/screenshots/483612/postdrbl2.png?1332517158","title":"Post/ Unive Rsity","likes_count":84,"rebound_source_id":null,"url":"http://dribbble.com/shots/483612-Post-Unive-Rsity","rebounds_count":0,"id":483612,"image_teaser_url":"http://dribbble.com/system/users/627/screenshots/483612/postdrbl2_teaser.png?1332517158","height":300,"views_count":497,"comments_count":11,"width":400},{"player":{"shots_count":32,"twitter_screen_name":"darylbro","avatar_url":"http://dribbble.s3.amazonaws.com/users/21845/avatars/original/7ac92af4266ce5b2bc6354f6583e0c84.png?1331102785","likes_received_count":8567,"name":"Daryl Ginn","created_at":"2011/03/07 00:39:00 -0500","location":"The moon","following_count":102,"likes_count":464,"website_url":null,"username":"daryl","url":"http://dribbble.com/daryl","rebounds_count":8,"draftees_count":7,"id":21845,"drafted_by_player_id":4826,"followers_count":2844,"comments_received_count":650,"comments_count":345,"rebounds_received_count":14},"short_url":"http://drbl.in/dxek","created_at":"2012/03/23 18:38:46 -0400","image_url":"http://dribbble.com/system/users/21845/screenshots/484234/email-app-new-email.png?1332542539","title":"Email App New Email","likes_count":92,"rebound_source_id":null,"url":"http://dribbble.com/shots/484234-Email-App-New-Email","rebounds_count":0,"id":484234,"image_teaser_url":"http://dribbble.com/system/users/21845/screenshots/484234/email-app-new-email_teaser.png?1332542539","height":300,"views_count":1076,"comments_count":22,"width":400}],"pages":50,"page":1,"per_page":15}];
}

- (void)blendDidFinishLoading:(CPThemeBlend)theBlend
{
    /*
    var contentView = [theWindow contentView],
        button = [CPButton buttonWithTitle:@"Hello Theme"];

    [button setTheme:[CPTheme themeNamed:@"BBBlocksKit"]];
    [button setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];
    [button sizeToFit];

    var center = [contentView center],
        frame = [button frame];

    frame.origin.x = center.x - CGRectGetWidth(frame) - 10.0;
    frame.origin.y = center.y - CGRectGetMidY(frame);
    [button setFrame:frame];

    [contentView addSubview:button];
    
    var aristoButton = [CPButton buttonWithTitle:@"Hello Aristo"];

    [aristoButton setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];
    [aristoButton sizeToFit];

    var frame = [aristoButton frame];
    frame.origin.x = center.x + 10.0;
    frame.origin.y = center.y - CGRectGetMidY(frame);
    [aristoButton setFrame:frame];

    [contentView addSubview:aristoButton];

    [[CPRunLoop currentRunLoop] performSelectors];
    */
}


- (void)connection:(CPJSONPConnection)aConnection didReceiveData:(CPString)data
{
    //this method is called when the network request returns. the data is the returned
    //information from flickr. we set the array of photo urls as the data to our collection view

    [self addShots:data];
}

- (void)connection:(CPJSONPConnection)aConnection didFailWithError:(CPString)error
{
    alert(error); //a network error occurred
}

- (void)addShots:(CPString)data
{
    //data = CPJSObjectCreateWithJSON(data);
    
    shots = data.shots;
    
    [cView setContent:shots];
}

@end

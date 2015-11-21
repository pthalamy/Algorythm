//
//  Playlist.m
//  Algorhythm
//
//  Created by Pierre Thalamy on 17/11/15.
//  Copyright © 2015 Pierre Thalamy. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

- (instancetype)initWithIndex:(NSUInteger)index
{
    self = [super init];
    if (self) {
        MusicLibrary* musicLibrary = [[MusicLibrary alloc] init];
        NSArray *library = musicLibrary.library;
        NSDictionary *playlistDictionnary = library[index];
        
        _playlistTitle = [playlistDictionnary objectForKey:kTitle];
        _playlistDescription = [playlistDictionnary objectForKey:kDescription];

        NSString *iconName = [playlistDictionnary objectForKey:kIcon];
        _playlistIcon = [UIImage imageNamed:iconName];
        
        NSString *largeIconName = [playlistDictionnary objectForKey:kIcon];
        _playlistIconLarge = [UIImage imageNamed:largeIconName];

        _playlistArtists = [NSArray arrayWithArray:[playlistDictionnary objectForKey:kArtists]];

        
        NSDictionary *colorDictionary = [playlistDictionnary objectForKey:kBackgroundColor];
        _backgroundColor = [self rgbColorFromDictionary:colorDictionary];
    }
    
    return self;
}

- (UIColor *)rgbColorFromDictionary:(NSDictionary*)colorDictionary {
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

@end

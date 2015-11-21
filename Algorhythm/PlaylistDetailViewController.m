//
//  PlaylistDetailViewController.m
//  Algorhythm
//
//  Created by Pierre Thalamy on 17/11/15.
//  Copyright © 2015 Pierre Thalamy. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.playlist) {
        self.playlistCoverImage.image = self.playlist.playlistIconLarge;
        self.playlistTitle.text = self.playlist.playlistTitle;
        self.playlistDescription.text = self.playlist.playlistDescription;
        self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
        
        self.playlistArtist0.text = self.playlist.playlistArtists[0];
        self.playlistArtist1.text = self.playlist.playlistArtists[1];
        self.playlistArtist2.text = self.playlist.playlistArtists[2];
        self.playlistArtist3.text = self.playlist.playlistArtists[3];
        self.playlistArtist4.text = self.playlist.playlistArtists[4];
        self.playlistArtist5.text = self.playlist.playlistArtists[5];
        self.playlistArtist6.text = self.playlist.playlistArtists[6];

    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

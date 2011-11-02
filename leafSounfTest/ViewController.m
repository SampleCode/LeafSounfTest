//
//  ViewController.m
//  leafSounfTest
//
//  Created by  on 2011/10/28.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(IBAction)shoot{

//使用AudioToolbox.framework
	//Get the filename of the sound file:
	NSString *path = [NSString stringWithFormat:@"%@%@", [[NSBundle mainBundle] resourcePath], @"/leafsound.wav"];

	//declare a system sound
	//id SystemSoundID soundID;

	//Get a URL for the sound file
	NSURL *filePath = [NSURL fileURLWithPath:path isDirectory:NO];

	//Use audio sevices to create the sound
	AudioServicesCreateSystemSoundID((CFURLRef)filePath, &soundID);
	//Use audio services to play the sound
	AudioServicesPlaySystemSound(soundID);

/*
//使用AVFoundationm.framework
NSString* path;
NSURL* url;

path = [[NSBundle mainBundle] pathForResource:@"leafsound" ofType:@"wav"];
url = [NSURL fileURLWithPath:path];

//initilize AVAudioPlayer
AVAudioPlayer *player;
player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:NULL];
//player.delegate = self;
player.volume = 1;
[player play];
*/

}


@end

//
//  ViewController.h
//  leafSounfTest
//
//  Created by  on 2011/10/28.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVAudioPlayer.h>

@interface ViewController : UIViewController {

    //AudioToolbox.framework使用
    SystemSoundID soundID;
    
}

-(IBAction)shoot;

@end

//
//  studio_iLeafViewController.m
//  SampleEnum
//
//  Created by 平杉 敦史 on 12/08/16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "studio_iLeafViewController.h"

typedef enum _NSMatrixMode {
NSRadioModeMatrix = 0,
NSHighlightModeMatrix = 1,
NSListModeMatrix = 2,
NSTrackModeMatrix = 3
} NSMatrixMode;

@interface studio_iLeafViewController ()
{
    NSMatrixMode mode;
}

@end

@implementation studio_iLeafViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    mode = NSListModeMatrix;
    //mode = 4;
    
    switch (mode) {
        case NSRadioModeMatrix:
            NSLog(@"NSRadioModeMatrix");
            break;
        case NSHighlightModeMatrix:
            NSLog(@"NSHighlightModeMatrix");
            break;
        case NSListModeMatrix:
            NSLog(@"NSListModeMatrix");
            mode = NSHighlightModeMatrix;
            break;
        case NSTrackModeMatrix:
            NSLog(@"NSTrackModeMatrix");
            break;
            
        default:
            NSLog(@"nothing");
            break;
    }
}

-(void)viewDidAppear:(BOOL)animated
{
    switch (mode) {
        case NSRadioModeMatrix:
            NSLog(@"NSRadioModeMatrix");
            break;
        case NSHighlightModeMatrix:
            NSLog(@"NSHighlightModeMatrix");
            break;
        case NSListModeMatrix:
            NSLog(@"NSListModeMatrix");
            break;
        case NSTrackModeMatrix:
            NSLog(@"NSTrackModeMatrix");
            break;
            
        default:
            NSLog(@"nothing");
            break;
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

//
//  ViewController.m
//  NoAutoLayout
//
//  Created by Efrén Reyes Torres on 8/7/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *viewOne;
@property CGRect viewOneFrame;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.viewOneFrame = self.viewOne.frame;
}

//Makes the frame size equal in both portrait and landscape
-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    [super didRotateFromInterfaceOrientation:fromInterfaceOrientation];
    if (fromInterfaceOrientation == UIInterfaceOrientationLandscapeLeft || fromInterfaceOrientation == UIInterfaceOrientationLandscapeRight) {
        self.viewOne.frame = self.viewOneFrame;
    } else {
        self.viewOne.frame = CGRectMake(self.viewOne.frame.origin.x, self.viewOne.frame.origin.y, self.viewOneFrame.size.width, self.viewOneFrame.size.height);
    }
}

@end

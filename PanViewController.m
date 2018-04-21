//
//  PanViewController.m
//  Gestures
//
//  Created by Tyler Boudreau on 2018-04-20.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController
- (IBAction)redViewPanned:(UIPanGestureRecognizer *)sender {
//    CGPoint locationinView =[sender locationInView:self.view];
//    sender.view.center = locationinView;
    
    CGPoint trasnslationInView= [sender translationInView:self.view];
    
    CGPoint oldCenter = sender.view.center;
    
   CGPoint newCenter=CGPointMake(oldCenter.x+trasnslationInView.x, oldCenter.y +trasnslationInView.y);
    sender.view.center=newCenter;
    [sender setTranslation:CGPointZero inView:self.view];
}


@end

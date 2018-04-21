//
//  SlideViewController.m
//  Gestures
//
//  Created by Tyler Boudreau on 2018-04-20.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "SlideViewController.h"

@interface SlideViewController ()

@property UIView *brown;
@property UIView *white;

@end

@implementation SlideViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width =360;
    CGFloat height =50;
    
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds)-width/2, CGRectGetMidY(self.view.bounds)- height/2, width, height);
    
   _brown = [[UIView alloc] initWithFrame:frame];
    self.brown.backgroundColor =[UIColor brownColor];
    [self.view addSubview:self.brown];
    
    
    
    
    
    CGFloat whiteWidth =360;
    CGFloat whiteHeight =50;
    
    
    CGRect whiteFrame = CGRectMake(CGRectGetMidX(self.view.bounds)-whiteWidth/2, CGRectGetMidY(self.view.bounds)- whiteHeight/2, whiteWidth, whiteHeight);
    
    _white = [[UIView alloc] initWithFrame:whiteFrame];
    self.white.backgroundColor =[UIColor whiteColor];
    [self.view addSubview:self.white];
    
    
    
    UISwipeGestureRecognizer *swipeRight=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(viewSwipe:)];
    
    UISwipeGestureRecognizer *swipeLeft =[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(viewSwipe:)];
    
    [self.white addGestureRecognizer:swipeRight];
    [self.white addGestureRecognizer:swipeLeft];
    [swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [swipeRight setDirection:UISwipeGestureRecognizerDirectionRight];
}


-(void)viewSwipe:(UISwipeGestureRecognizer *)sender
{
    if (sender.direction == UISwipeGestureRecognizerDirectionLeft){
        NSLog(@"Swipe Left");
        [UIView animateWithDuration:0.1 animations:^{
            self.white.frame=CGRectMake(self.white.frame.origin.x + self.white.frame.size.width /5, self.white.frame.origin.y, self.white.frame.size.width, self.white.frame.size.height);}];
        
    }else if (sender.direction== UISwipeGestureRecognizerDirectionRight){
        NSLog(@"Swipe right");
        [UIView animateWithDuration:0.1 animations:^{
            self.white.frame=CGRectMake(self.white.frame.origin.x - self.white.frame.size.width /5, self.white.frame.origin.y, self.white.frame.size.width, self.white.frame.size.height);}];
        }
    }
             
         



@end

//
//  TapViewController.m
//  Gestures
//
//  Created by Tyler Boudreau on 2018-04-20.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()
@property UIView *colour;

@end

@implementation TapViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    CGFloat width =100;
    CGFloat height =100;
    
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds)-width/2, CGRectGetMidY(self.view.bounds)- height/2, width, height);
    
    self.colour = [[UIView alloc] initWithFrame:frame];
    self.colour.backgroundColor =[UIColor orangeColor];
    [self.view addSubview:self.colour];
    
    UITapGestureRecognizer *tapGesture =[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
    
    [self.view addGestureRecognizer:tapGesture];
}

-(void)viewTapped:(UITapGestureRecognizer *)sender
{
UIColor *color = ([self.colour.backgroundColor isEqual:[UIColor purpleColor]]) ? [UIColor orangeColor] : [UIColor purpleColor];
    self.colour.backgroundColor=color;
}

@end

//
//  RotationViewController.m
//  Gestures
//
//  Created by Tyler Boudreau on 2018-04-20.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()


@property UIView *red;
@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width =100;
    CGFloat height =100;
    
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds)-width/2, CGRectGetMidY(self.view.bounds)- height/2, width, height);
    
    _red = [[UIView alloc] initWithFrame:frame];
    self.red.backgroundColor =[UIColor greenColor];
    [self.view addSubview:self.red];
    
    UIRotationGestureRecognizer *rotation =[[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(viewRotated:)];
    
    [self.red addGestureRecognizer:rotation];
}

-(void)viewRotated:(UIRotationGestureRecognizer *)sender
{
    sender.view.transform=CGAffineTransformRotate(sender.view.transform, sender.rotation);
    sender.rotation=0.0;
}


@end

//
//  UIScrrenEdgePan.m
//  Gestures
//
//  Created by Tyler Boudreau on 2018-04-23.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "UIScrrenEdgePan.h"

@interface UIScrrenEdgePan ()

@end

@implementation UIScrrenEdgePan

- (void)viewDidLoad {
    [super viewDidLoad];

    CGRect frame = CGRectMake(400, 300, 250, 150);
    self.green = [[UIView alloc] initWithFrame:frame];
    self.green.backgroundColor =[UIColor greenColor];
    self.green.userInteractionEnabled = YES;
    [self.view addSubview:self.green];

    UIScreenEdgePanGestureRecognizer *screenEdge =[[UIScreenEdgePanGestureRecognizer alloc]initWithTarget:self action:@selector(screenyEdgey:)];
    
    UIPanGestureRecognizer *right=[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(screenyEdgeyLeft:)];
    
    [self.green addGestureRecognizer:right];
    
    [screenEdge setEdges:UIRectEdgeRight];
    [screenEdge setDelegate:self];
[self.green addGestureRecognizer:screenEdge];
    
}

-(void)screenyEdgey:(UIScreenEdgePanGestureRecognizer *)sender{
    
    if (UIGestureRecognizerStateBegan == sender.state || UIGestureRecognizerStateChanged == sender.state) {
        CGPoint translate =[sender translationInView:sender.view];
        double point=self.green.center.x+translate.x;
        if(point>=300){
            self.green.center = CGPointMake(point, self.view.center.y);

        }
    }
}
    
-(void)screenyEdgeyLeft:(UIScreenEdgePanGestureRecognizer *)sender{
    
        if(UIGestureRecognizerStateChanged == sender.state){
            [UIView animateWithDuration:0.2 animations:^{
                double point2 =  [UIScreen mainScreen].bounds.size.width  + (self.green.frame.size.width / 2) - 50;
                self.green.center = CGPointMake(point2, self.view.center.y);
            }];
        }
    }

    


@end

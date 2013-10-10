//
//  SwipeToRevealCell.m
//  SwipeToReveal
//
//  Created by Hagit Shemer on 10/9/13.
//  Copyright (c) 2013 Applicaster. All rights reserved.
//

#import "SwipeToRevealTableCell.h"

@implementation SwipeToRevealTableCell

- (void)awakeFromNib
{
    self.horizontal_offset = 300.0;
}

- (void)revealBottomView
{
    CGRect topNewFrame = self.topView.frame;
    // frame will move to the left
    topNewFrame.origin.x -= self.horizontal_offset;
    [UIView animateWithDuration:0.5
                          delay:0.1
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         self.topView.frame = topNewFrame;
                     }
                     completion:^(BOOL finished){
                     }];
}

- (void)concealBottomView
{
    CGRect topNewFrame = self.topView.frame;
    // frame will move to the left
    topNewFrame.origin.x += self.horizontal_offset;
    [UIView animateWithDuration:0.5
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         self.topView.frame = topNewFrame;
                     }
                     completion:^(BOOL finished){
                     }];
}

@end

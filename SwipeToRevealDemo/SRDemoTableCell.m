//
//  SRDemoTableCell.m
//  SwipeToRevealDemo
//
//  Created by Hagit Shemer on 10/10/13.
//  Copyright (c) 2013 Applicaster. All rights reserved.
//

#import "SRDemoTableCell.h"

@implementation SRDemoTableCell

- (IBAction)actionButtonTapped:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Action Tapped"
                                                    message:nil
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}


@end

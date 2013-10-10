//
//  SRDemoTableCell.h
//  SwipeToRevealDemo
//
//  Created by Hagit Shemer on 10/10/13.
//  Copyright (c) 2013 Applicaster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SwipeToRevealTableCell.h"

@interface SRDemoTableCell : SwipeToRevealTableCell

@property (nonatomic,weak) IBOutlet UIButton *actionButton;
- (IBAction)actionButtonTapped:(id)sender;

@end

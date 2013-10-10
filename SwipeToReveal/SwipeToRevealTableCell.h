//
//  SwipeToRevealCell.h
//  SwipeToReveal
//
//  Created by Hagit Shemer on 10/9/13.
//  Copyright (c) 2013 Applicaster. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwipeToRevealTableCell : UITableViewCell

@property (nonatomic,weak) IBOutlet UIView *topView;
@property (nonatomic,weak) IBOutlet UIView *bottomView;

/**
 top view swipe offset
 default is 300.0
*/
@property CGFloat horizontal_offset;

- (void)revealBottomView;
- (void)concealBottomView;

@end

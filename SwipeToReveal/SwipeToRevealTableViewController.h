//
//  SwipeToRevealTableViewController.h
//  SwipeToReveal
//
//  Created by Hagit Shemer on 10/9/13.
//  Copyright (c) 2013 Applicaster. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SwipeToRevealTableCell.h"

@interface SwipeToRevealTableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic,weak) IBOutlet UITableView *tableView;

- (SwipeToRevealTableCell *)addGestureToCell:(SwipeToRevealTableCell *)cell;

@end

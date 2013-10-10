//
//  SRDemoTableViewController.m
//  SwipeToRevealDemo
//
//  Created by Hagit Shemer on 10/9/13.
//  Copyright (c) 2013 Applicaster. All rights reserved.
//

#import "SRDemoTableViewController.h"
#import "SRDemoTableCell.h"

@interface SRDemoTableViewController ()

@end

@implementation SRDemoTableViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SRDemoTableCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"SRDemoTableCell"];
    
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"SRDemoTableCell"
                                              owner:nil
                                            options:nil] lastObject];
    }
    
    [self addGestureToCell:cell];
    
    return cell;
}

@end

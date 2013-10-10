//
//  SwipeToRevealTableViewController.m
//  SwipeToReveal
//
//  Created by Hagit Shemer on 10/9/13.
//  Copyright (c) 2013 Applicaster. All rights reserved.
//

#import "SwipeToRevealTableViewController.h"
#import "SwipeToRevealTableCell.h"

@interface SwipeToRevealTableViewController () <UIGestureRecognizerDelegate, UIScrollViewDelegate>
@property (nonatomic,strong) SwipeToRevealTableCell *currentRevealedCell;
@end

#pragma mark -

@implementation SwipeToRevealTableViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)dealloc
{
    self.currentRevealedCell = nil;
}

#pragma mark - Public
- (SwipeToRevealTableCell *)addGestureToCell:(SwipeToRevealTableCell *)cell
{
    UISwipeGestureRecognizer *swipeRecognizer = [[UISwipeGestureRecognizer alloc]
                                                  initWithTarget:self
                                                  action:@selector(tableCellSwiped:)];
    [swipeRecognizer setDirection:(UISwipeGestureRecognizerDirectionLeft |
								   UISwipeGestureRecognizerDirectionRight)];
	[cell addGestureRecognizer:swipeRecognizer];
    return cell;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SwipeToRevealTableCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"SwipeToRevealTableCell"];
    
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"SwipeToRevealTableCell"
                                             owner:nil
                                           options:nil] lastObject];
    }
    
    [self addGestureToCell:cell];
    
    return cell;
}

#pragma mark - UITableViewDelegate


#pragma mark -UIScrollViewDelegate

-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView
{
    if (self.currentRevealedCell) {
        [self.currentRevealedCell concealBottomView];
    }
}

#pragma mark - Private

- (void)tableCellSwiped:(UISwipeGestureRecognizer *)recognizer
{
    if (self.currentRevealedCell) {
        [self.currentRevealedCell concealBottomView];
    }
    self.currentRevealedCell = (SwipeToRevealTableCell *)recognizer.view;
    [self.currentRevealedCell revealBottomView];
}

@end

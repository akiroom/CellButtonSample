//
//  CBSDetailViewController.m
//  CellButtonSample
//
//  Created by Hiroki Akiyama (office) on 2013/12/13.
//  Copyright (c) 2013年 akiroom. All rights reserved.
//

#import "CBSDetailViewController.h"

@interface CBSDetailViewController ()
- (void)configureView;
@end

@implementation CBSDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

  if (self.detailItem) {
      self.detailDescriptionLabel.text = [self.detailItem description];
  }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  CBSDetailViewController.h
//  CellButtonSample
//
//  Created by Hiroki Akiyama (office) on 2013/12/13.
//  Copyright (c) 2013年 akiroom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBSDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end

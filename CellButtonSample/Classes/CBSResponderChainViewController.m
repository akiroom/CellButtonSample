//
//  CBSResponderChainViewController.m
//  CellButtonSample
//

#import "CBSResponderChainViewController.h"
#import "CBSResponderChainButtonCell.h"

@interface CBSResponderChainViewController ()

@end

@implementation CBSResponderChainViewController

- (id)initWithStyle:(UITableViewStyle)style
{
  self = [super initWithStyle:style];
  if (self) {
    // Custom initialization
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  // Uncomment the following line to preserve selection between presentations.
  // self.clearsSelectionOnViewWillAppear = NO;
  
  // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
  // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
  
  [self becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  // Return the number of sections.
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  // Return the number of rows in the section.
  return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"Cell";
  CBSResponderChainButtonCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (!cell) {
    cell = [[CBSResponderChainButtonCell alloc] init];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    [cell.button setTitle:@"Push!!" forState:UIControlStateNormal];
    [cell layoutSubviews];
  }
  [cell.textLabel setText:[NSString stringWithFormat:@"Cell %d", indexPath.row]];
  return cell;
}

#pragma mark - Responder chain

- (void)pushButton:(id)sender
{
  NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
  
  NSString *message = [NSString stringWithFormat:@"Tapped at index%d.", indexPath.row];
  [[[UIAlertView alloc] initWithTitle:nil message:message delegate:nil cancelButtonTitle:@"OK"
                    otherButtonTitles:nil] show];
}

@end

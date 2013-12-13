//
//  CBSTargetActionViewController.m
//  CellButtonSample
//

#import "CBSTargetActionViewController.h"
#import "CBSTargetActionButtonCell.h"

@interface CBSTargetActionViewController ()

@end

@implementation CBSTargetActionViewController

- (id)initWithStyle:(UITableViewStyle)style
{
  if (self = [super initWithStyle:style]) {
    
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"Cell";
  CBSTargetActionButtonCell *cell = (id)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (!cell) {
    cell = [[CBSTargetActionButtonCell alloc] init];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    [cell.button setTitle:@"Push!!" forState:UIControlStateNormal];
    [cell layoutSubviews];
  }
  [cell.textLabel setText:[NSString stringWithFormat:@"Cell %d", indexPath.row]];
  [cell.button addTarget:self action:@selector(showAlert:) forControlEvents:UIControlEventTouchUpInside];
  return cell;
}

- (void)showAlert:(id)sender
{
  UITableViewCell *parentCell = (id)[sender superview];
  while ([parentCell isKindOfClass:[UITableViewCell class]] == NO) {
    parentCell = (id)[parentCell superview];
  }
  
  NSIndexPath *indexPath = [self.tableView indexPathForCell:parentCell];
  
  NSString *message = [NSString stringWithFormat:@"Tapped at index%d.", indexPath.row];
  [[[UIAlertView alloc] initWithTitle:nil message:message delegate:nil cancelButtonTitle:@"OK"
                    otherButtonTitles:nil] show];
}

@end

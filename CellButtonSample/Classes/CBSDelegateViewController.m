//
//  CBSDelegateViewController.m
//  CellButtonSample
//

#import "CBSDelegateViewController.h"
#import "CBSDelegateButtonCell.h"

@interface CBSDelegateViewController ()<CBSDelegateButtonCellDelegate>
@end

@implementation CBSDelegateViewController

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
  CBSDelegateButtonCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (!cell) {
    cell = [[CBSDelegateButtonCell alloc] init];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    [cell.button setTitle:@"Push!!" forState:UIControlStateNormal];
    [cell layoutSubviews];
    [cell setDelegate:self];
  }
  [cell.textLabel setText:[NSString stringWithFormat:@"Cell %d", indexPath.row]];
  return cell;
}

- (void)delegateButtonCellDidPushButton:(CBSDelegateButtonCell *)delegateButtonCell
{
  NSIndexPath *indexPath = [self.tableView indexPathForCell:delegateButtonCell];
  
  NSString *message = [NSString stringWithFormat:@"Tapped at index%d.", indexPath.row];
  [[[UIAlertView alloc] initWithTitle:nil message:message delegate:nil cancelButtonTitle:@"OK"
                    otherButtonTitles:nil] show];
}

@end

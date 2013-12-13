//
//  CBSMenuViewController.m
//  CellButtonSample
//

#import "CBSMenuViewController.h"

@interface CBSMenuViewController ()

@end

@implementation CBSMenuViewController

- (id)initWithStyle:(UITableViewStyle)style
{
  self = [super initWithStyle:UITableViewStylePlain];
  if (self) {
    _menuKeyValues =
    @{@"TargetAction": @"Target-Action",
      @"Delegate": @"Delegate",
      @"ResponderChain": @"ResponderChain"};
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  [self.tableView registerClass:[UITableViewCell class]
         forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return _menuKeyValues.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class])
                                                          forIndexPath:indexPath];
  
  cell.textLabel.text = _menuKeyValues.allValues[indexPath.row];
  cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
  
  return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSString *nextViewConKey = _menuKeyValues.allKeys[indexPath.row];
  Class nextViewConClass = NSClassFromString([NSString stringWithFormat:@"CBS%@ViewController", nextViewConKey]);
  UIViewController *nextViewCon = [[nextViewConClass alloc] init];
  nextViewCon.title = _menuKeyValues.allValues[indexPath.row];
  [self.navigationController pushViewController:nextViewCon animated:YES];
}

@end

//
//  CBSResponderChainButtonCell.m
//  CellButtonSample
//

#import "CBSResponderChainButtonCell.h"

@implementation CBSResponderChainButtonCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  if (self) {
    _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_button addTarget:self action:@selector(pushButton:) forControlEvents:UIControlEventTouchUpInside];
    self.accessoryView = _button;
  }
  return self;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  [self.button sizeToFit];
}

- (void)pushButton:(id)sender
{
  [[UIApplication sharedApplication] sendAction:@selector(pushButton:) to:nil from:self forEvent:nil];
}

@end

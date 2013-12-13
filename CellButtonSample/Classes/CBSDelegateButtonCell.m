//
//  CBSDelegateButtonCell.m
//  CellButtonSample
//

#import "CBSDelegateButtonCell.h"

@implementation CBSDelegateButtonCell

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
  if ([self.delegate respondsToSelector:@selector(delegateButtonCellDidPushButton:)]) {
    [self.delegate delegateButtonCellDidPushButton:self];
  }
}

@end

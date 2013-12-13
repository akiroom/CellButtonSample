//
//  CBSTargetActionButtonCell.m
//  CellButtonSample
//

#import "CBSTargetActionButtonCell.h"

@implementation CBSTargetActionButtonCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  if (self) {
    _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.accessoryView = _button;
  }
  return self;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  [self.button sizeToFit];
}

@end

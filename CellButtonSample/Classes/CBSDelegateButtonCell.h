//
//  CBSDelegateButtonCell.h
//  CellButtonSample
//

#import <UIKit/UIKit.h>

@class CBSDelegateButtonCell;

@protocol CBSDelegateButtonCellDelegate <NSObject>
@optional
- (void)delegateButtonCellDidPushButton:(CBSDelegateButtonCell *)delegateButtonCell;
@end

@interface CBSDelegateButtonCell : UITableViewCell
@property (strong, nonatomic) UIButton *button;
@property (nonatomic) id<CBSDelegateButtonCellDelegate> delegate;
@end

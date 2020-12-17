//
//  CLCBaseTableViewCell.h
//  CLCommonUIKit
//
//  Created by zcl on 2020/12/17.
//

#import <UIKit/UIKit.h>
#import "CLCBaseViewProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface CLCBaseTableViewCell : UITableViewCell <CLCBaseViewProtocol, CLCBaseTableViewCellAccessable>

@end

NS_ASSUME_NONNULL_END

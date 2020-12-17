//
//  CLCBaseViewProtocol.h
//  CLCommonUIKit
//
//  Created by zcl on 2020/12/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, CLCElementAction) {
    CLCElementAction_Universal1 = 900001, //通用事件定义
    CLCElementAction_Universal2 = 900002,
    CLCElementAction_Universal3 = 900003,
};

@protocol CLCBaseViewAccessable <NSObject>

//Can be realize by subclass
- (void)initViews;
- (void)makeAutolayoutContraints;
- (void)updateUIWithDisplayModel:(id)displayModel;

- (void)remakeAutolayoutContraints;

//View Infomation
+ (CGFloat)viewWidth;
+ (CGFloat)viewHeight;

@end

@protocol CLCBaseTableViewCellAccessable <CLCBaseViewAccessable>

+ (NSString *)cellIdentifier;

@end

@protocol CLCBaseViewProtocol <NSObject>

//The data displayModel
@property(nonatomic, strong) id displayModel;

//Action Handler Block
@property(nonatomic, copy) void (^onElementActionHandler)(id action, id param);

@end


NS_ASSUME_NONNULL_END

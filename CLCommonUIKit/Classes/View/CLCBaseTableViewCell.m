//
//  CLCBaseTableViewCell.m
//  CLCommonUIKit
//
//  Created by zcl on 2020/12/17.
//

#import "CLCBaseTableViewCell.h"

@interface CLCBaseTableViewCell ()

@property(nonatomic, assign) BOOL isLayoutSubviews;

@end

@implementation CLCBaseTableViewCell

@synthesize displayModel;

@synthesize onElementActionHandler;

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initViews];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    if (!self.isLayoutSubviews) {
        self.isLayoutSubviews = YES;
        [self makeAutolayoutContraints];
    }
    [self remakeAutolayoutContraints];
}

- (void)initViews {
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    self.backgroundColor = [UIColor whiteColor];
}

- (void)makeAutolayoutContraints {
    
}

- (void)updateUIWithDisplayModel:(id)displayModel {
    self.displayModel = displayModel;
}

- (void)remakeAutolayoutContraints {
    
}

+ (CGFloat)viewWidth {
    return 0;
}

+ (CGFloat)viewHeight {
    return 0;
}

+ (NSString *)cellIdentifier {
    return [NSString stringWithFormat:@"%@_Identifier", NSStringFromClass([self class])];
}

@end

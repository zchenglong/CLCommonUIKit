//
//  CLCBaseView.m
//  CLCommonUIKit
//
//  Created by zcl on 2020/12/17.
//

#import "CLCBaseView.h"

@interface CLCBaseView ()

@property(nonatomic, assign) BOOL isLayoutSubviews;

@end

@implementation CLCBaseView

@synthesize displayModel;

@synthesize onElementActionHandler;

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
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

@end

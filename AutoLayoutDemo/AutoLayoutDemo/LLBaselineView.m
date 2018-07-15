//
//  LLBaselineView.m
//  AutoLayoutDemo
//
//  Created by leoliu on 2017/7/20.
//  Copyright © 2017年 LL. All rights reserved.
//

#import "LLBaselineView.h"
#import "Masonry.h"

@interface LLBaselineView()

@end
@implementation LLBaselineView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init
{
    self = [super init];
    [self makeUI];
    return self;
}

- (void)makeUI
{
    [self addSubview:self.titleLabel];
    
}

//- (UIView *)viewForBaselineLayout{
//    return self;
//}

- (void)updateConstraints
{
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    //Important
    //Call [super updateConstraints] as the final step in your implementation.
    [super updateConstraints];
}

//基于约束的布局是懒触发的，只有在添加了约束的情况下，系统才会自动调用 -updateConstraints 方法，如果把所有的约束放在 updateConstraints中，那么系统将会不知道你的布局方式是基于约束的，所以 重写+requiresConstraintBasedLayout 返回YES就是明确告诉系统：虽然我之前没有添加约束,但我确实是基于约束的布局！这样可以保证系统一定会调用 -updateConstraints 方法 从而正确添加约束
+ (BOOL)requiresConstraintBasedLayout
{
    return YES;
}

- (UILabel *)titleLabel
{
    if(!_titleLabel){
        _titleLabel = [[UILabel alloc]init];
        _titleLabel.textColor = [UIColor redColor];
        [self addSubview:_titleLabel];
    }
    return _titleLabel;
}
@end

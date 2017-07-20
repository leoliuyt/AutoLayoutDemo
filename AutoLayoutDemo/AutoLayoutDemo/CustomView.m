//
//  CustomView.m
//  AutoLayoutDemo
//
//  Created by leoliu on 2017/7/16.
//  Copyright © 2017年 LL. All rights reserved.
//

#import "CustomView.h"
#import "LLLabel.h"

@interface CustomView()

@property (nonatomic, strong) LLLabel *label1;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *label2;

@property (nonatomic, strong) NSString *title;
@end

@implementation CustomView

- (instancetype)init
{
    self = [super init];
    self.backgroundColor = [UIColor orangeColor];
//    [self ll_makeConstraints];
    return self;
}

- (void)ll_makeConstraints
{
    [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self);
        make.centerY.equalTo(self);
    }];
    
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.label1.mas_right).offset(5.);
        make.width.height.equalTo(@(50.));
        make.centerY.equalTo(self);
    }];
    
    [self.label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.imageView.mas_right).offset(5.);
        make.right.equalTo(self);
        make.centerY.equalTo(self);
    }];
}

//苹果推荐的更新添加约束的位置
- (void)updateConstraints
{
    [self ll_makeConstraints];
    [super updateConstraints];
}

- (CGSize)intrinsicContentSize
{
    CGFloat height = [self widthForTitle:self.title];
    //如果给定纬度没有固定size 那个可以将给定纬度设置成UIViewNoIntrinsicMetric
    return CGSizeMake(UIViewNoIntrinsicMetric, height);
}

//- (UIEdgeInsets)alignmentRectInsets
//{
////    UIEdgeInsets edage = [super alignmentRectInsets];
////    return edage.left;
//    return UIEdgeInsetsMake(0, 0, 10, 0);
//}

- (CGFloat)widthForTitle:(NSString *)title
{
   CGRect rect = [title boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20.]} context:nil];
    return rect.size.height;
}

- (void)setContent{
    self.title = @"哈哈哈";
    self.label1.text = self.title;
    self.label2.text = @"哦哦哦噢噢噢";
    
    //可以调用此方法 移除原有固定size 然后重新设置固定size 重新调用- (CGSize)intrinsicContentSize 方法
    [self invalidateIntrinsicContentSize];
//    [self setNeedsUpdateConstraints];
}


- (LLLabel *)label1
{
    if(!_label1){
        _label1 = [[LLLabel alloc]init];
        _label1.textColor = [UIColor blackColor];
        _label1.font = [UIFont systemFontOfSize:20.];
        [self addSubview:_label1];
    }
    return _label1;
}

- (UILabel *)label2
{
    if(!_label2){
        _label2 = [[UILabel alloc]init];
        _label2.textColor = [UIColor blackColor];
        _label2.font = [UIFont systemFontOfSize:12.];
        [self addSubview:_label2];
    }
    return _label2;
}

- (UIImageView *)imageView
{
    if(!_imageView){
        _imageView = [[UIImageView alloc]init];
        _imageView.backgroundColor = [UIColor redColor];
        [self addSubview:_imageView];
    }
    return _imageView;
}
@end

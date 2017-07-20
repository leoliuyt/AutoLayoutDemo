//
//  LLLabelCustom.m
//  AutoLayoutDemo
//
//  Created by leoliu on 2017/7/20.
//  Copyright © 2017年 LL. All rights reserved.
//

#import "LLLabelCustom.h"

@implementation LLLabelCustom


- (instancetype)init
{
    self = [super init];
    
    [self makeUI];
    return self;
}

- (void)makeUI
{
    self.label1 = [[UILabel alloc] init];
    self.label1.backgroundColor = [UIColor clearColor];
    self.label1.numberOfLines = 0;
    self.label1.textColor = [UIColor blackColor];
    [self addSubview:self.label1];
    
    self.label2 = [[UILabel alloc] init];
    self.label2.backgroundColor = [UIColor clearColor];
    self.label2.numberOfLines = 0;
    self.label2.textColor = [UIColor blackColor];
    [self addSubview:self.label2];
    
    
    self.label3 = [[UILabel alloc] init];
    self.label3.backgroundColor = [UIColor clearColor];
    self.label3.numberOfLines = 0;
    self.label3.textColor = [UIColor blackColor];
    [self addSubview:self.label3];
    
}

- (void)setContent{
    self.label1.text = @"锄禾日当红，汗滴禾下土";
    //    self.label2.text = @"春眠不觉晓，司法考试快递放";
    self.label3.text = @"是李开复是来看杀戮空间分类收款大嫁风尚";
}

- (void)updateConstraints
{
    [super updateConstraints];
    
    [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(self).offset(10);
        make.right.equalTo(self).offset(-10.);
    }];
    
    [self.label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.label1.mas_bottom);
        make.left.equalTo(self).offset(10);
        make.right.equalTo(self).offset(-10.);
    }];
    
    [self.label3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.label2.mas_bottom);
        make.left.equalTo(self).offset(10);
        make.right.equalTo(self).offset(-10.);
        make.bottom.equalTo(self);
    }];
}
@end

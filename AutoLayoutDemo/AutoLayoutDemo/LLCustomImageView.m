//
//  LLCustomImageView.m
//  AutoLayoutDemo
//
//  Created by leoliu on 2017/7/20.
//  Copyright © 2017年 LL. All rights reserved.
//

#import "LLCustomImageView.h"

@implementation LLCustomImageView


- (instancetype)init
{
    self = [super init];
    [self makeUI];
    return self;
}

- (void)makeUI
{
    self.backgroundColor = [UIColor orangeColor];
    self.imageView = [[UIImageView alloc] init];
    self.imageView.backgroundColor = [UIColor redColor];
    [self addSubview:self.imageView];
    
    self.label  = [[UILabel alloc] init];
    self.label.text = @"aaa";
    self.label.textColor = [UIColor blackColor];
    [self addSubview:self.label];
    
    
    self.label2  = [[UILabel alloc] init];
    self.label2.text = @"aaa";
    self.label2.textColor = [UIColor blackColor];
    [self addSubview:self.label2];
}

- (void)setContent{
    [self.imageView setImage:[UIImage imageNamed:@"1"]];
}

- (void)updateConstraints
{
    [super updateConstraints];
    
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(self);
    }];
    
    [self.label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.label);
        make.left.equalTo(self.label.mas_right).offset(5.);
        make.right.equalTo(self);
    }];
    
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.label.mas_right).offset(10.);
        make.top.equalTo(self.label);
        make.right.equalTo(self);
        //        make.bottom.equalTo(self);
    }];
    
}
@end

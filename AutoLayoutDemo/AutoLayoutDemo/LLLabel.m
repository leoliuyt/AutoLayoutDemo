//
//  LLLabel.m
//  AutoLayoutDemo
//
//  Created by leoliu on 2017/7/16.
//  Copyright © 2017年 LL. All rights reserved.
//

#import "LLLabel.h"

@implementation LLLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (CGSize)intrinsicContentSize
{
    CGSize size = [super intrinsicContentSize];
    return size;
}


//label 在Font\Text 发生变化的时候会调用此方法 移除原有的固定size
// 重新调用intrinsicContentSize 根据新的Font、Text 计算并设置固定size

-(void)invalidateIntrinsicContentSize{
    [super invalidateIntrinsicContentSize];
}

@end

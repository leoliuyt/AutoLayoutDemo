//
//  UIView+LL.h
//  AutoLayoutDemo
//
//  Created by leoliu on 2017/7/20.
//  Copyright © 2017年 LL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SwizzlingDefine.h"
@interface UIView (LL)

@property (nonatomic, copy) UIEdgeInsets (^ll_alignmentRectInsets)(UIEdgeInsets originInsets);

@end

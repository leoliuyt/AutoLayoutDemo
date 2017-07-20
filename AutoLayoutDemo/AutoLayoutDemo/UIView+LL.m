//
//  UIView+LL.m
//  AutoLayoutDemo
//
//  Created by leoliu on 2017/7/20.
//  Copyright © 2017年 LL. All rights reserved.
//

#import "UIView+LL.h"

@implementation UIView (LL)

+ (void)load {
    swizzling_exchangeMethod([self class], @selector(alignmentRectInsets), @selector(swizzling_alignmentRectInsets));
}

- (UIEdgeInsets)swizzling_alignmentRectInsets
{
    UIEdgeInsets edage = [self swizzling_alignmentRectInsets];
    if (self.ll_alignmentRectInsets) {
        return self.ll_alignmentRectInsets(edage);
    } else {
        return edage;
    }
}

- (void)setLl_alignmentRectInsets:(UIEdgeInsets (^)(UIEdgeInsets))ll_alignmentRectInsets
{
    objc_setAssociatedObject(self, @selector(ll_alignmentRectInsets), ll_alignmentRectInsets, OBJC_ASSOCIATION_RETAIN);
}

- (UIEdgeInsets (^)(UIEdgeInsets))ll_alignmentRectInsets
{
    return objc_getAssociatedObject(self, _cmd);
}
@end

//
//  LLCustomImageView.h
//  AutoLayoutDemo
//
//  Created by leoliu on 2017/7/20.
//  Copyright © 2017年 LL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"
@interface LLCustomImageView : UIView

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UILabel *label2;
@property (nonatomic, strong) UIImageView *imageView;

- (void)setContent;

@end

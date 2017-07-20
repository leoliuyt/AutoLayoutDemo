//
//  LLLabelViewController.m
//  AutoLayoutDemo
//
//  Created by leoliu on 2017/7/20.
//  Copyright © 2017年 LL. All rights reserved.
//

#import "LLLabelViewController.h"
#import "LLLabelCustom.h"
#import "UIView+LL.h"
#import "UIImageView+LL.h"
#import "LLCustomImageView.h"

@interface LLLabelViewController ()

@end

@implementation LLLabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    LLLabelCustom *custom = [[LLLabelCustom alloc] init];
    custom.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:custom];
    
    [custom mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@200.);
        make.top.equalTo(self.view).offset(100.);
        make.centerX.equalTo(self.view);
    }];
    
    custom.label1.ll_alignmentRectInsets = ^UIEdgeInsets(UIEdgeInsets originInsets) {
        UIEdgeInsets edage = originInsets;
        edage.bottom -= 10;
        return edage;
    };
    
    custom.label2.ll_alignmentRectInsets = ^UIEdgeInsets(UIEdgeInsets originInsets) {
        UIEdgeInsets edage = originInsets;
        edage.bottom -= 10;
        return edage;
    };
    
    custom.label3.ll_alignmentRectInsets = ^UIEdgeInsets(UIEdgeInsets originInsets) {
        UIEdgeInsets edage = originInsets;
        edage.bottom -= 10;
        return edage;
    };
    
    [custom setContent];
    
    
    LLCustomImageView *view2 = [[LLCustomImageView alloc] init];
    view2.imageView.ll_alignmentRectInsets = ^UIEdgeInsets(UIEdgeInsets originInsets) {
        UIEdgeInsets edage = originInsets;
        edage.top += 20;
        return edage;
    };
    [self.view addSubview:view2];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view);
        make.top.equalTo(custom.mas_bottom).offset(10.);
        make.height.equalTo(@200.);
    }];
    
    [view2 setContent];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

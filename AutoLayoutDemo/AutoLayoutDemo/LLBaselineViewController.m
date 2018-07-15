//
//  LLBaselineViewController.m
//  AutoLayoutDemo
//
//  Created by leoliu on 2017/7/20.
//  Copyright © 2017年 LL. All rights reserved.
//

#import "LLBaselineViewController.h"
#import "Masonry.h"
#import "LLBaselineView.h"

@interface LLBaselineViewController ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIButton *btn;

@end

@implementation LLBaselineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    LLBaselineView *baselineView = [LLBaselineView new];
    baselineView.titleLabel.text = @"阿里健康的";
    baselineView.frame = CGRectMake(0, 64, 100, 40);
    [self.view addSubview:baselineView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UILabel *)label
{
    if(!_label){
        _label = [[UILabel alloc]init];
        _label.numberOfLines = 0;
        _label.textColor = [UIColor blackColor];
        _label.font = [UIFont systemFontOfSize:12.];
        [self.view addSubview:_label];
    }
    return _label;
}

- (UIButton *)btn
{
    if(!_btn){
        _btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.view addSubview:_btn];
    }
    return _btn;
}

@end

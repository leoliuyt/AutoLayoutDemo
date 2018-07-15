//
//  LLBaselineViewController.m
//  AutoLayoutDemo
//
//  Created by leoliu on 2017/7/20.
//  Copyright © 2017年 LL. All rights reserved.
//

#import "LLBaselineViewController.h"
#import "Masonry.h"

@interface LLBaselineViewController ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIButton *btn;

@end

@implementation LLBaselineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self.view).offset(10.);
//        make.top.equalTo(self.view).offset(80.);
//        make.width.equalTo(@40.);
//    }];
//    
//    self.label.text = @"是空老师看见了打开就菲利克斯";
//
    
//    [self.btn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self.label.mas_right).offset(10.);
//        make.firstBaseline.equalTo(self.label.mas_firstBaseline);
//    }];
    [self.btn setTitle:@"苦上加苦" forState:UIControlStateNormal];
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

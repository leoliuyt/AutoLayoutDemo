//
//  CustomViewController.m
//  AutoLayoutDemo
//
//  Created by leoliu on 2017/7/16.
//  Copyright © 2017年 LL. All rights reserved.
//

#import "CustomViewController.h"
#import "CustomView.h"
#import "LLLabel.h"


@interface CustomViewController ()

@property (nonatomic, strong) CustomView *customView;

@property (nonatomic, strong) LLLabel *label;
@property (nonatomic, strong) LLLabel *label1;
@property (nonatomic, strong) LLLabel *label2;

@property (nonatomic, strong) UIView *bgView;

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.customView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.customView setContent];
    });
    
    self.bgView.backgroundColor = [UIColor redColor];
    [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@(100.));
        make.centerX.equalTo(self.view);
//        make.bottom.equalTo(self.view).offset(@(10));
        make.bottom.equalTo(self.view).offset(-10.);
    }];
    
    
    self.label.text = @"aaaa";
    self.label.backgroundColor = [UIColor orangeColor];
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.bgView).offset(10.);
        make.right.equalTo(self.bgView).offset(-10.);
        make.top.equalTo(self.bgView).offset(10.);
    }];
    
    self.label1.text = @"bbbb";
    self.label1.backgroundColor = [UIColor orangeColor];
    [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.bgView).offset(10.);
        make.right.equalTo(self.bgView).offset(-10.);
        make.top.equalTo(self.label.mas_bottom).offset(10.);
    }];
    
    
    self.label2.text = @"cccc";
    self.label2.backgroundColor = [UIColor orangeColor];
    [self.label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.bgView).offset(10.);
        make.right.equalTo(self.bgView).offset(-10.);
        make.top.equalTo(self.label1.mas_bottom).offset(10.);
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (CustomView *)customView
{
    if(!_customView){
        _customView = [[CustomView alloc]init];
        [self.view addSubview:_customView];
    }
    return _customView;
}

- (LLLabel *)label
{
    if(!_label){
        _label = [[LLLabel alloc]init];
        [self.bgView addSubview:_label];
    }
    return _label;
}

- (LLLabel *)label1
{
    if(!_label1){
        _label1 = [[LLLabel alloc]init];
        [self.bgView addSubview:_label1];
    }
    return _label1;
}

- (LLLabel *)label2
{
    if(!_label2){
        _label2 = [[LLLabel alloc]init];
        [self.bgView addSubview:_label2];
    }
    return _label2;
}

- (UIView *)bgView
{
    if(!_bgView){
        _bgView = [[UIView alloc]init];
        [self.view addSubview:_bgView];
    }
    return _bgView;
}
@end

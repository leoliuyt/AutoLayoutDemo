//
//  CustomViewController.m
//  AutoLayoutDemo
//
//  Created by leoliu on 2017/7/16.
//  Copyright © 2017年 LL. All rights reserved.
//

#import "CustomViewController.h"
#import "CustomView.h"

@interface CustomViewController ()

@property (nonatomic, strong) CustomView *customView;

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

@end

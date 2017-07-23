//
//  LLBaselineViewController.m
//  AutoLayoutDemo
//
//  Created by leoliu on 2017/7/20.
//  Copyright © 2017年 LL. All rights reserved.
//

#import "LLBaselineViewController.h"
#import "LLBaselineView.h"


@interface LLBaselineViewController ()

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

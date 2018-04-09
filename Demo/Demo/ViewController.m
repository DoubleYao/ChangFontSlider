//
//  ViewController.m
//  Demo
//
//  Created by yaoyao on 2018/4/8.
//  Copyright © 2018年 yaoyao. All rights reserved.
//

#import "ViewController.h"
#import "ChangeFontSlider.h"
@interface ViewController ()
@property (nonatomic, strong)UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.label];
    
    ChangeFontSlider *slider = [[ChangeFontSlider alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height-80, self.view.frame.size.width, 80) textArray:@[@"小",@"中",@"大",@"特大"]];
    [self.view addSubview:slider];
    __weak typeof(self) weakSelf = self;
    slider.selectedBlock = ^(NSInteger index) {
        weakSelf.label.font = [UIFont systemFontOfSize:(12+2*index)];
    };
    
    
}


- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 50)];
        _label.font = [UIFont systemFontOfSize:12];
        _label.text = @"Hello World 么么哒";
        _label.textAlignment = NSTextAlignmentCenter;
        
    }
    return _label;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  ViewController.m
//  NJKeyFrameAnimation
//
//  Created by lirenqiang on 2017/7/21.
//  Copyright © 2017年 李仁强. All rights reserved.
//

#import "ViewController.h"
#import "NJAnimationButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [[[NJAnimationButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)] beginAnimation];
    NJAnimationButton *btn = [[NJAnimationButton alloc] initWithFrame:CGRectMake(100, 100, 60, 60)];
    [self.view addSubview:btn];
    [btn beginAnimation];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

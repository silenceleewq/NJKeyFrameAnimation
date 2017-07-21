//
//  NJAnimationButton.m
//  TestProject
//
//  Created by lirenqiang on 2017/7/21.
//  Copyright © 2017年 李仁强. All rights reserved.
//

#import "NJAnimationButton.h"

static NJAnimationButton * _instance = nil;

@implementation NJAnimationButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIImage *image = [UIImage imageNamed:@"1"];
        [self setImage:image forState:UIControlStateNormal];
//        [self sizeToFit];
    }
    return self;
}

- (void)beginAnimation
{
    CAAnimation *animation = [self animationForButton];
    [self.layer addAnimation:animation forKey:@"button"];
}


/**
 给Button用的动画效果

 @return CAAniamtion
 */
- (CAAnimation *)animationForButton {
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    UIBezierPath *path = [self pathForAnimation];
    animation.path = path.CGPath;
    animation.duration = 1.5f;
    animation.removedOnCompletion = NO;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    animation.fillMode = kCAFillModeForwards;
    return animation;
}

/**
 pathForAnimation

 @return UIBezier路径
 */
- (UIBezierPath *)pathForAnimation
{
    UIBezierPath *path = [UIBezierPath bezierPath];

    //开始的位置
    CGPoint startPoint = CGPointMake(kSCREENWIDTH/2, kSCREENHEIGHT+self.frame.size.height);
    //结束的位置
    CGPoint endPoint = CGPointMake(kSCREENWIDTH, kSCREENHEIGHT*0.618);
    //控制点1: 该控制点即是终点
    CGPoint controlPoint1 = CGPointMake(kSCREENWIDTH/2, kSCREENHEIGHT*0.618);
    //控制点2: 该控制点即是终点
    CGPoint controlPoint2 = CGPointMake(kSCREENWIDTH+self.frame.size.width/12, kSCREENHEIGHT*0.618);
    
    [path moveToPoint:startPoint];
    
    [path addCurveToPoint:endPoint controlPoint1:controlPoint1 controlPoint2:controlPoint2];
    
    return path;
}


@end






















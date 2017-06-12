//
//  Const.m
//  RotationDemo
//
//  Created by quangang on 2017/6/9.
//  Copyright © 2017年 LQG. All rights reserved.
//

#import "Const.h"

@implementation Const

- (void)test{
    
//    AppDelegate *tempDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
//    tempDelegate.orientationMask = UIInterfaceOrientationMaskAllButUpsideDown;
    
//        AppDelegate *tempDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
//        tempDelegate.orientationMask = UIInterfaceOrientationMaskPortrait;
}

/** 设置app总体支持的方向*/
+ (void)setOrientation:(UIInterfaceOrientationMask)orientationMask{
    AppDelegate *tempDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    tempDelegate.orientationMask = orientationMask;
}

@end

//
//  Const.h
//  RotationDemo
//
//  Created by quangang on 2017/6/9.
//  Copyright © 2017年 LQG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Const : NSObject

//打开APP横竖屏
#define ALLOWROTATION AppDelegate *tempDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate; \
                      tempDelegate.orientationMask = UIInterfaceOrientationMaskAllButUpsideDown;

//关闭APP横竖屏
#define CLOSEROTATION    AppDelegate *tempDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate; \
                         tempDelegate.orientationMask = UIInterfaceOrientationMaskPortrait;

/** 设置app总体支持的方向*/
+ (void)setOrientation:(UIInterfaceOrientationMask)orientationMask;

@end

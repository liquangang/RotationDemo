//
//  PresentViewController.m
//  RotationDemo
//
//  Created by quangang on 2017/6/12.
//  Copyright © 2017年 LQG. All rights reserved.
//

#import "PresentViewController.h"

@interface PresentViewController ()

@end

@implementation PresentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

//在present中的vc中只是打开开关即可，不设置vc的三个方法是可以正常横屏的
//

/*
 * 针对present的vc
  1. 在present中的vc中只是打开开关即可，不设置vc的三个方法是可以正常横屏的
  2. 只设置默认的显示方向时是支持的，可以设置单一的方法，但是设置其他两个方法是没有用的
     * 此时必须在info。plist中打开支持的三个方向或者使用代码打开横屏开关，才可以实现横屏
  3. 默认只有横屏模式时，需要返回no，此时三个方法都要设置，其余两个方法返回同一个方向（只支持present方式生成的vc）
 */

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    ALLOWROTATION
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    CLOSEROTATION
}

- (BOOL)shouldAutorotate{
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscapeRight;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationLandscapeRight;
}

- (IBAction)dismissVC:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end

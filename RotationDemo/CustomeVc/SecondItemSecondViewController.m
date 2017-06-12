//
//  SecondItemSecondViewController.m
//  RotationDemo
//
//  Created by quangang on 2017/6/9.
//  Copyright © 2017年 LQG. All rights reserved.
//

#import "SecondItemSecondViewController.h"

@interface SecondItemSecondViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *mySwith;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

@end

@implementation SecondItemSecondViewController

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


- (BOOL)shouldAutorotate{
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationPortrait;
}

- (IBAction)switchAction:(id)sender {
    if (self.mySwith.on) {
        ALLOWROTATION
        self.infoLabel.text = @"打开横竖屏";
    }else{
        CLOSEROTATION
        self.infoLabel.text = @"关闭横竖屏";
    }
}

@end

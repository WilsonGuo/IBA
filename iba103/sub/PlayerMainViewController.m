//
//  PlayerMainViewController.m
//  iba103
//
//  Created by Wilson on 16/9/17.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import "PlayerMainViewController.h"
#import "MyMusicViewController.h"
#import "MyVideoViewController.h"
#import "MyFmViewController.h"
@interface PlayerMainViewController ()

@end

@implementation PlayerMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)msgAction:(id)sender {
    
}
- (IBAction)musicAction:(id)sender {
    MyMusicViewController *vc=[[MyMusicViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)videoAction:(id)sender {
    MyVideoViewController *vc=[[MyVideoViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)fmAction:(id)sender {
    MyFmViewController *vc=[[MyFmViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)lastAction:(id)sender {
    
    
}
- (IBAction)nextAction:(id)sender {
    
}
- (IBAction)palyAction:(id)sender {
    
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 ];
    rotationAnimation.duration = 10;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = HUGE_VALF;
    
    [self.musicImgView.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}


@end

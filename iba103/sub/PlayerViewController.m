//
//  PlayerViewController.m
//  iba103
//
//  Created by Wilson on 2016/9/25.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import "PlayerViewController.h"

@interface PlayerViewController ()

@end

@implementation PlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)listAction:(id)sender {
}
- (IBAction)soundAction:(id)sender {
    UIImage* img=[UIImage imageNamed:@"nosound.png"];
    
    [ self.soundBtn setBackgroundImage:img forState:UIControlStateNormal];
}
- (IBAction)likeAction:(id)sender {
   
    UIImage* img=[UIImage imageNamed:@"slike.png"];
    
    [ self.likeBtn setBackgroundImage:img forState:UIControlStateNormal];
}


- (IBAction)modeAction:(id)sender {
}
- (IBAction)moreAction:(id)sender {
}
- (IBAction)upAction:(id)sender {
}
- (IBAction)nextAction:(id)sender {
}
- (IBAction)playAction:(id)sender {
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

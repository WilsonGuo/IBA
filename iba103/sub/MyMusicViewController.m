//
//  MyMusicViewController.m
//  iba103
//
//  Created by Wilson on 16/9/17.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import "MyMusicViewController.h"
#import "MusicViewController.h"
#import "MusicGroupViewController.h"
#import "Common.h"
#import "PlayerViewController.h"
@interface MyMusicViewController ()

@end

@implementation MyMusicViewController

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
- (IBAction)palyAction:(id)sender {
    PlayerViewController *vc=[[PlayerViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
}
- (IBAction)songAction:(id)sender {
    MusicViewController *vc=[[MusicViewController alloc]init];
    vc.type=MUSIC_TYPE_1;
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)singerAction:(id)sender {
    MusicGroupViewController *vc=[[MusicGroupViewController alloc]init];
    vc.type=MUSIC_GROUP_TYPE_1;
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)alumbAction:(id)sender {
    MusicGroupViewController *vc=[[MusicGroupViewController alloc]init];
    vc.type=MUSIC_GROUP_TYPE_2;
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)cloudMusicAction:(id)sender {
    MusicViewController *vc=[[MusicViewController alloc]init];
    vc.type=MUSIC_TYPE_4;
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)localMusicAction:(id)sender {
    MusicViewController *vc=[[MusicViewController alloc]init];
    vc.type=MUSIC_TYPE_5;
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)outMusicAction:(id)sender {
    MusicViewController *vc=[[MusicViewController alloc]init];
    vc.type=MUSIC_TYPE_6;
    [self.navigationController pushViewController:vc animated:YES];
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

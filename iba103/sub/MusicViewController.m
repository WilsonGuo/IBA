//
//  MusicViewController.m
//  iba103
//
//  Created by Wilson on 2016/9/25.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import "MusicViewController.h"
#import "IBAMusic.h"
#import "MusicTableViewCell.h"
#import "Common.h"
#import "PlayerViewController.h"
@interface MusicViewController ()

@end

@implementation MusicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    if(self.type==MUSIC_TYPE_1){
        self.titleView.text=@"歌曲";
        self.outMusicView.hidden=YES;
    }else if (self.type==MUSIC_TYPE_2){
        self.titleView.text=@"歌手";
        self.outMusicView.hidden=YES;
    }else if (self.type==MUSIC_TYPE_3){
        self.titleView.text=@"专辑";
        self.outMusicView.hidden=YES;
    }else if (self.type==MUSIC_TYPE_4){
        self.titleView.text=@"云音乐";
        self.outMusicView.hidden=YES;
    }else if (self.type==MUSIC_TYPE_5){
        self.titleView.text=@"本地音乐";
        self.outMusicView.hidden=YES;
    }else if (self.type==MUSIC_TYPE_6){
        self.titleView.text=@"外部音源";
        self.outMusicView.hidden=NO;
        self.tableView.hidden=YES;
    }else{
        self.titleView.text=@"歌曲";
        self.outMusicView.hidden=YES;

    }
    
    
    self.devices =[[NSMutableArray alloc]initWithCapacity:10];
    for(int i=0;i<15;i++){
        IBAMusic *device=[[IBAMusic alloc]init];
        device.name=@"音乐";
        [self.devices addObject:device];
        
    }
    
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)playAction:(id)sender {
    PlayerViewController *vc=[[PlayerViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)outAction:(id)sender {
    
}


#pragma maik - TableView datasource
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    IBAMusic *device=[self.devices objectAtIndex:indexPath.row];
    
    PlayerViewController *vc=[[PlayerViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
};


#pragma mark 代理
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.devices.count;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //组件复用
    static NSString *CellIdentifier = @"Cell";
    MusicTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"MusicTableViewCell" owner:self options:nil] lastObject];
    }
    //更新数据
    cell.selectionStyle=UITableViewCellSelectionStyleNone;//除去选中时的背景
    IBAMusic *info=[self.devices objectAtIndex:indexPath.row];
    cell.nameView.text=info.name;
     cell.imgView.hidden=YES;
    
   
    
    
    
    
    return cell;
}



@end

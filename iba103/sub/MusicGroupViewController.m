//
//  MusicGroupViewController.m
//  iba103
//
//  Created by Wilson on 2016/9/25.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import "MusicGroupViewController.h"
#import "IBAMusicGroup.h"
#import "MusicGroupTableViewCell.h"
#import "MusicViewController.h"
#import "Common.h"
#import "PlayerViewController.h"
@interface MusicGroupViewController ()

@end

@implementation MusicGroupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if(self.type==MUSIC_GROUP_TYPE_1){
        self.titleView.text=@"歌手";
        
    }else if (self.type==MUSIC_GROUP_TYPE_2){
        self.titleView.text=@"专辑";
       
    }
    self.devices =[[NSMutableArray alloc]initWithCapacity:10];
    for(int i=0;i<15;i++){
        IBAMusicGroup *device=[[IBAMusicGroup alloc]init];
        device.name=@"音乐组";
        [self.devices addObject:device];
        
    }
    
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
   // self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
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

#pragma maik - TableView datasource
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    IBAMusicGroup *device=[self.devices objectAtIndex:indexPath.row];
    
    MusicViewController *vc=[[MusicViewController alloc]init];
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
    MusicGroupTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"MusicGroupTableViewCell" owner:self options:nil] lastObject];
    }
    cell.selectionStyle=UITableViewCellSelectionStyleNone;//除去选中时的背景

    IBAMusicGroup *info=[self.devices objectAtIndex:indexPath.row];
    cell.nameView.text=info.name;
    
    if(self.type==MUSIC_GROUP_TYPE_1){
        cell.imgView.image=[UIImage imageNamed:@"singer.png"];
        
    }else if (self.type==MUSIC_GROUP_TYPE_2){
        cell.imgView.image=[UIImage imageNamed:@"album.png"];

        
    }

    return cell;
}


@end

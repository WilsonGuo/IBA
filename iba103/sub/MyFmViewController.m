//
//  MyFmViewController.m
//  iba103
//
//  Created by Wilson on 16/9/17.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import "MyFmViewController.h"
#import "IBAMusic.h"
#import "FMTableViewCell.h"
#import "Common.h"
@interface MyFmViewController ()

@end

@implementation MyFmViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.devices =[[NSMutableArray alloc]initWithCapacity:10];
    for(int i=0;i<15;i++){
        IBAMusic *device=[[IBAMusic alloc]init];
        device.name=@"中央人民广播电台";
        [self.devices addObject:device];
        
    }
    
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma maik - TableView datasource
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    IBAMusic *device=[self.devices objectAtIndex:indexPath.row];
    
    
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
    FMTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"FMTableViewCell" owner:self options:nil] lastObject];
    }
    //更新数据
    cell.selectionStyle=UITableViewCellSelectionStyleNone;//除去选中时的背景
    IBAMusic *info=[self.devices objectAtIndex:indexPath.row];
    cell.name.text=info.name;
    
       
    
    
    return cell;
}




@end

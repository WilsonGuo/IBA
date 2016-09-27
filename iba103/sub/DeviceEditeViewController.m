//
//  DeviceEditeViewController.m
//  iba103
//
//  Created by Wilson on 16/9/17.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import "DeviceEditeViewController.h"
#import "DevicreTableViewCell.h"
#import "IBADevice.h"
@interface DeviceEditeViewController ()

@end

@implementation DeviceEditeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.devices =[[NSMutableArray alloc]initWithCapacity:10];
    for(int i=0;i<5;i++){
        IBADevice *device=[[IBADevice alloc]init];
        device.name=@"IBADevice";
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
- (IBAction)saveAction:(id)sender {
}

- (IBAction)deleteAction:(id)sender {
    
    self.inputBoxView.text=@"";
}





#pragma maik - TableView datasource
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    IBADevice *device=[self.devices objectAtIndex:indexPath.row];
    
    
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
    DevicreTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"DevicreTableViewCell" owner:self options:nil] lastObject];
    }
    //更新数据
    cell.selectionStyle=UITableViewCellSelectionStyleNone;//除去选中时的背景
    IBADevice *info=[self.devices objectAtIndex:indexPath.row];
    cell.deviceName.text=info.name;
    
    
    
    return cell;
}


@end

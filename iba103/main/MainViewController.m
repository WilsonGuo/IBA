//
//  MainViewController.m
//  iba103
//
//  Created by Wilson on 16/9/17.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import "MainViewController.h"
#import "PlayerMainViewController.h"
#import "DeviceEditeViewController.h"
#import "DevicreTableViewCell.h"
#import "IBADevice.h"
#import "DeviceSelectedView.h"
@interface MainViewController ()

@end

@implementation MainViewController
UIScrollView *myScrollView;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.devices =[[NSMutableArray alloc]initWithCapacity:10];
    self.deviceViews=[[NSMutableArray alloc]initWithCapacity:10];
    for(int i=0;i<5;i++){
        IBADevice *device=[[IBADevice alloc]init];
         device.name=@"IBADevice";
        [self.devices addObject:device];
        
    }
    
    for(int i=0;i<5;i++){
        IBADevice *device=[[IBADevice alloc]init];
        device.name=@"IBADevice";
        device.devId=[NSString stringWithFormat:@"%d",i];
        [self.deviceViews addObject:device];
        
    }
    
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    myScrollView=[[UIScrollView alloc] init];
   
    [self addSelectedView:self.deviceViews];
    

}

//动态添加选择设备弹框
-(void)addSelectedView:(NSMutableArray*) deviceViews{
    if(([[UIScreen mainScreen] bounds].size.height-80-80*[deviceViews count])>0){
         [myScrollView setFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-300)/2, ([[UIScreen mainScreen] bounds].size.height-80*[deviceViews count])/2, 300, 80*[deviceViews count])];
       

    }else{
        [myScrollView setFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-300)/2,40, 300, [[UIScreen mainScreen] bounds].size.height
-80)];
        

    }
    [myScrollView setContentSize:CGSizeMake(300, 80*[deviceViews count])];

        for(int i=0;i<[deviceViews count];i++){
        NSArray *nibViews=[[NSBundle mainBundle] loadNibNamed:@"DeviceSelectedView" owner:self options:nil]; //通过这个方法,取得我们的视图
        DeviceSelectedView *subView=[nibViews objectAtIndex:0];
        subView.frame=CGRectMake(0, 80*i, 300, 80); //设置frame
        IBADevice *dev=[deviceViews objectAtIndex:i];
            subView.deviceName.text=dev.name;
        subView.button.tag=[dev.devId intValue];
        [subView.button addTarget:self action:@selector(BtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [myScrollView addSubview:subView]; //添加
    }
    
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    
    //button背景色
    button1.backgroundColor = [UIColor clearColor];
    [button1 setTitle:@"" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(hideSelectedView:) forControlEvents:UIControlEventTouchUpInside];
    [self.myView addSubview:button1];
    [self.myView addSubview:myScrollView];
    
    
}

- (void)BtnClick:(UIButton *)btn
{
    
    for(int i=0;i<[self.deviceViews count];i++){
        IBADevice *dev=[self.deviceViews objectAtIndex:i];
        if([dev.devId intValue]==btn.tag){
             NSLog(@"点击>>>>>>>>>>>>>>%d",[dev.devId intValue]);
            
            PlayerMainViewController *vc=[[PlayerMainViewController alloc]init];
           [self.navigationController pushViewController:vc animated:YES];
            self.selectedView.hidden=YES;
            
        }
    }
   
}

- (IBAction)hideSelectedView:(id)sender {
    self.selectedView.hidden=YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)editAction:(id)sender {
    DeviceEditeViewController *vc=[[DeviceEditeViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)allControlAction:(id)sender {
    PlayerMainViewController *vc=[[PlayerMainViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)talkAction:(id)sender {
    if(self.soundView.isHidden){
        self.soundView.hidden=NO;
        [self playSoundAnim];
    }else{
        self.soundView.hidden=YES;
       [self.soundImgView performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:1];
    }
   
}










#pragma maik - TableView datasource
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    IBADevice *device=[self.devices objectAtIndex:indexPath.row];
    
    
    self.selectedView.hidden=NO;
    
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
    
    
    //长按操作
    UILongPressGestureRecognizer * longPressGesture = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(cellLongPress:)];
    [cell addGestureRecognizer:longPressGesture];
    
    
    
    return cell;
}


- (void)cellLongPress:(UIGestureRecognizer *)recognizer{
    
    if (recognizer.state == UIGestureRecognizerStateBegan) {
        
        CGPoint point = [recognizer locationInView:self.tableView];
        NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint:point];
        NSLog(@">>>>>>>>>>>%ld",(long)indexPath.row);
        
        
        
    }
}

-(void)playSoundAnim{
    
    NSMutableArray  *arrayM=[NSMutableArray array];
    for (int i=1; i<14; i++) {
        [arrayM addObject:[UIImage imageNamed:[NSString stringWithFormat:@"ease_record_animate_%02d.png",i]]];
    }
    //设置动画数组
    [self.soundImgView setAnimationImages:arrayM];
    //设置动画播放次数
    [self.soundImgView setAnimationRepeatCount:0];
    //设置动画播放时间
    [self.soundImgView setAnimationDuration:14*0.075];
    //开始动画
    [self.soundImgView startAnimating];
    // 5. 动画播放完成后，清空动画数组
    
    [self.soundImgView performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:14*20*0.075];
   
}



@end

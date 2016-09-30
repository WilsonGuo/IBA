//
//  MainViewController.h
//  iba103
//
//  Created by Wilson on 16/9/17.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
@interface MainViewController : BaseViewController <UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (weak, nonatomic) IBOutlet UIView *soundView;
@property (weak, nonatomic) IBOutlet UIImageView *soundImgView;
@property (weak, nonatomic) IBOutlet UIView *selectedView;
@property (weak, nonatomic) IBOutlet UIButton *hideBtn;

@property (weak, nonatomic) IBOutlet UIView *myView;

@property (retain,nonatomic) NSMutableArray* devices;//全部设备
@property (retain,nonatomic) NSMutableArray* deviceViews;//选择的设备
@end

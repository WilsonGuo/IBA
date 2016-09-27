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
@property (retain,nonatomic) NSMutableArray* devices;

@end

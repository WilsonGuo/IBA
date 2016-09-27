//
//  MyFmViewController.h
//  iba103
//
//  Created by Wilson on 16/9/17.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
@interface MyFmViewController : BaseViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (retain,nonatomic) NSMutableArray* devices;

@end

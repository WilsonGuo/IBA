//
//  MusicViewController.h
//  iba103
//
//  Created by Wilson on 2016/9/25.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import "ViewController.h"
#import "BaseViewController.h"
@interface MusicViewController : BaseViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *titleView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIView *outMusicView;
@property (weak, nonatomic) IBOutlet UIImageView *outImgView;
@property (retain,nonatomic) NSMutableArray* devices;

@property (nonatomic,assign) int type;
@end

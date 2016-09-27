//
//  MyMusicViewController.h
//  iba103
//
//  Created by Wilson on 16/9/17.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
@interface MyMusicViewController : BaseViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *songCountView;
@property (weak, nonatomic) IBOutlet UILabel *singerCountView;

@property (weak, nonatomic) IBOutlet UILabel *alumbCountView;
@property (weak, nonatomic) IBOutlet UILabel *cloudMusicCountView;
@property (weak, nonatomic) IBOutlet UILabel *localMusicCountView;
@property (weak, nonatomic) IBOutlet UILabel *outMusicCountView;
@end

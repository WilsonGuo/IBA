//
//  DevicreTableViewCell.h
//  iba103
//
//  Created by Wilson on 16/9/17.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DevicreTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *deviceImg;

@property (weak, nonatomic) IBOutlet UILabel *deviceName;
@end

//
//  MusicTableViewCell.h
//  iba103
//
//  Created by Wilson on 2016/9/25.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MusicTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameView;
@property (weak, nonatomic) IBOutlet UILabel *userNameView;
@property (weak, nonatomic) IBOutlet UILabel *timeView;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

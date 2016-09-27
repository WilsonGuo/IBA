//
//  MusicGroupTableViewCell.h
//  iba103
//
//  Created by Wilson on 2016/9/25.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MusicGroupTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *noteView;

@property (weak, nonatomic) IBOutlet UILabel *nameView;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@end

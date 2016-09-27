//
//  PlayerViewController.h
//  iba103
//
//  Created by Wilson on 2016/9/25.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
@interface PlayerViewController : BaseViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UISlider *soundProgressBar;
@property (weak, nonatomic) IBOutlet UILabel *songNameView;
@property (weak, nonatomic) IBOutlet UILabel *singerNameView;
@property (weak, nonatomic) IBOutlet UIButton *soundBtn;
@property (weak, nonatomic) IBOutlet UIButton *likeBtn;
@property (weak, nonatomic) IBOutlet UILabel *leftTimeView;

@property (weak, nonatomic) IBOutlet UILabel *rightTimeBtn;
@property (weak, nonatomic) IBOutlet UISlider *progressBar;
@end

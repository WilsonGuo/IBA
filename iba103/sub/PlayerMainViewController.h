//
//  PlayerMainViewController.h
//  iba103
//
//  Created by Wilson on 16/9/17.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
@interface PlayerMainViewController : BaseViewController
@property (weak, nonatomic) IBOutlet UISlider *seekBarView;
@property (weak, nonatomic) IBOutlet UILabel *musicNameView;
@property (weak, nonatomic) IBOutlet UIImageView *musicImgView;

@property (weak, nonatomic) IBOutlet UIButton *palyBtn;
@property (weak, nonatomic) IBOutlet UIButton *lastBtn;
@property (weak, nonatomic) IBOutlet UIButton *nextBtn;
@end

//
//  MyVideoViewController.h
//  iba103
//
//  Created by Wilson on 16/9/17.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
@interface MyVideoViewController : BaseViewController<UICollectionViewDataSource,UICollectionViewDelegate>  
@property (weak, nonatomic) IBOutlet UIView *playView;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UIButton *topPlayBtn;
@property (weak, nonatomic) IBOutlet UILabel *leftTime;
@property (weak, nonatomic) IBOutlet UILabel *rightTime;
@property (weak, nonatomic) IBOutlet UISlider *progressBar;
@property (retain,nonatomic) NSMutableArray* devices;
@end

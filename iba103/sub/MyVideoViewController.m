//
//  MyVideoViewController.m
//  iba103
//
//  Created by Wilson on 16/9/17.
//  Copyright © 2016年 com.zhcase. All rights reserved.
//

#import "MyVideoViewController.h"
#import "CollectionCell.h"
#import "IBAVideo.h"
@interface MyVideoViewController ()

@end

@implementation MyVideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.devices =[[NSMutableArray alloc]initWithCapacity:10];
    for(int i=0;i<15;i++){
        IBAVideo *device=[[IBAVideo alloc]init];
        device.name=@"影片";
        [self.devices addObject:device];
        
    }
    
    self.collectionView.delegate=self;
    self.collectionView.dataSource=self;
    
    UINib *nibCell = [UINib nibWithNibName:@"CollectionCell" bundle:[NSBundle mainBundle]];
    [self.collectionView registerNib:nibCell forCellWithReuseIdentifier:@"CollectionCell"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

//隐藏正在播放的界面
- (IBAction)hidePlayAction:(id)sender {
    
    self.playView.hidden=YES;
}



//上一个
- (IBAction)upAction:(id)sender {
}
//播放
- (IBAction)playAction:(id)sender {
    self.topPlayBtn.hidden=YES;
    
    
}
//下一个
- (IBAction)nextAction:(id)sender {
}


//网格中Item的点击时间
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
     self.playView.hidden=NO;
    NSLog(@"用户点击了第%li个单元格",(long)indexPath.row);
   
}



//该方法返回值决定每个单元格与上、下、左、右的间距
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout: (UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    //UIEdgeInsets insets = {top, left, bottom, right};
    return UIEdgeInsetsMake(0, 15, 0, 15);
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
//单元格的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(120, 160);
}
//该方法返回值决定每⾏之间的间隔像素
-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 5;
}
//该方法返回值决定每列之间的间隔像素
-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return 5;
}
//每个section的item个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.devices count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    CollectionCell *cell = (CollectionCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionCell" forIndexPath:indexPath];
    
    IBAVideo *info=[self.devices objectAtIndex:indexPath.row];
    cell.nameView.text=info.name;
    
    
    
    return cell;
}
@end

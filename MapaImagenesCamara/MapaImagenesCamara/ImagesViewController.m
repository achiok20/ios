//
//  ImagesViewController.m
//  MapaImagenesCamara
//
//  Created by teclalabs on 22/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import "ImagesViewController.h"

@interface ImagesViewController ()

@end

@implementation ImagesViewController

-(instancetype)init{
    
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    layout.itemSize=CGSizeMake(106.f, 106.f);
    layout.minimumInteritemSpacing=1.0;
    layout.minimumLineSpacing=1.0;
    return (self= [super initWithCollectionViewLayout:layout]);
    
}

-(void)viewDidLoad
{
    self.collectionView.backgroundColor=[UIColor whiteColor];
    [self.collectionView registerClass:[ImagesCell class] forCellWithReuseIdentifier:@"Foto"];
    
    
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Foto" forIndexPath:indexPath];
    
    cell.backgroundColor=[UIColor lightGrayColor];
    
    return cell;
}

@end

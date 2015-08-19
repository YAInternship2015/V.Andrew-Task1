//
//  AVCollectionViewController.m
//  FirstTaskYal
//
//  Created by Admin on 18.08.15.
//  Copyright (c) 2015 bla Ltd. All rights reserved.
//

#import "AVCollectionViewController.h"
#import "AVCellDataSource.h"
#import "AVCollectionViewCell.h"

@interface AVCollectionViewController ()

@property (nonatomic, strong) AVCellDataSource *dataSource;

@end

@implementation AVCollectionViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource = [[AVCellDataSource alloc] init];
    
}


#pragma mark - UICollectionView datasource

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    return [[self.dataSource listOfData] count];
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    AVCollectionViewCell *collectionCell = [collectionView
                                            dequeueReusableCellWithReuseIdentifier: AVCollectionViewCellPrototype
                                              forIndexPath: indexPath];
    
    NSArray *data = [self.dataSource listOfData];
    [collectionCell zetupWithData: data[indexPath.row]];
    return collectionCell;
}

#pragma mark - action

- (IBAction)backOnTableView:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}


@end

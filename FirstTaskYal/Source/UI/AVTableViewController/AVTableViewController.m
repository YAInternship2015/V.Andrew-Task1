//
//  AVTableViewController.m
//  FirstTaskYal
//
//  Created by Admin on 05.08.15.
//  Copyright (c) 2015 bla Ltd. All rights reserved.
//

#import "AVTableViewController.h"
#import "AVTableViewCell.h"
#import "AVCellDataSource.h"

@class AVBookModel;

NSInteger const kHeightForRow = 80;

@interface AVTableViewController ()

@property (nonatomic, strong) AVCellDataSource *dataSource;

@end

@implementation AVTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource = [[AVCellDataSource alloc] init];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self.dataSource listOfData] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    AVTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: AVTableViewCellPrototype
                                                            forIndexPath: indexPath];
    NSInteger rowIndex = indexPath.row;
    NSArray *data = [self.dataSource listOfData];
    [cell setupWithData: data[rowIndex]];

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return kHeightForRow;
}


@end

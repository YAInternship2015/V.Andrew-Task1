//
//  AVTableViewController.m
//  FirstTaskYal
//
//  Created by Admin on 05.08.15.
//  Copyright (c) 2015 bla Ltd. All rights reserved.
//

#import "AVTableViewController.h"
#import "AVTableViewCell.h"

NSInteger const kHeightForRow = 80;

@interface AVTableViewController ()

@property (nonatomic, strong) NSArray *imagesList;
@property (nonatomic, strong) NSArray *textsList;

@end

@implementation AVTableViewController

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.textsList = [[NSArray alloc] initWithObjects:@"row #1", @"row #2", @"row #3", @"row #4",
                      @"row #5", @"row #6", @"row #7", @"row #8", @"row #9", @"row #10", nil];
    
    self.imagesList = [[NSArray alloc] initWithObjects:@"1.jpg", @"2.jpg", @"3.jpg", @"1.jpg",
                       @"2.jpg", @"3.jpg", @"1.jpg", @"2.jpg", @"3.jpg", @"1.jpg", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.textsList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    AVTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellsPrototype"
                                                            forIndexPath:indexPath];
    NSInteger rowIndex = indexPath.row;
    cell.cellTextLabel.text = [self.textsList objectAtIndex: rowIndex];
    cell.cellImageView.image = [UIImage imageNamed: [self.imagesList objectAtIndex: rowIndex]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return kHeightForRow;
}


@end

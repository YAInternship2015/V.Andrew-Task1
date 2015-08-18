//
//  AVTableDataSource.m
//  FirstTaskYal
//
//  Created by Admin on 18.08.15.
//  Copyright (c) 2015 bla Ltd. All rights reserved.
//

#import "AVCellDataSource.h"
#import "AVBookModel.h"

@interface AVCellDataSource ()

@property (nonatomic, strong) NSMutableArray *data;

@end

@implementation AVCellDataSource

- (instancetype)init {
    self = [super init];
    if (self) {
        _data = [[NSMutableArray alloc] init];
        
        NSArray *textsList = [[NSArray alloc] initWithObjects:@"row #1", @"row #2", @"row #3", @"row #4",
        @"row #5", @"row #6", @"row #7", @"row #8", @"row #9", @"row #10", nil];
         
        NSArray *imagesList = [[NSArray alloc] initWithObjects:@"1.jpg", @"2.jpg", @"3.jpg", @"1.jpg",
        @"2.jpg", @"3.jpg", @"1.jpg", @"2.jpg", @"3.jpg", @"1.jpg", nil];

        NSInteger index = 0;
        for (NSString *name in textsList) {
            AVBookModel *model = [AVBookModel bookWithName:name
                                                image:[UIImage imageNamed: imagesList[index++]]];
            [_data addObject:model];
        }
        

    
    }
    return self;
}

- (NSArray *)listOfData {
    return self.data;
}


@end

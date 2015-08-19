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
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Books" ofType:@"plist"];
        
        NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
        NSArray *titlesList = [dict objectForKey:@"BookTitle"];
        NSArray *thumbnails = [dict objectForKey:@"Thumbnail"];
        
        NSInteger index = 0;
        for (NSString *name in titlesList) {
            NSLog(@"%@", thumbnails[index]);
            AVBookModel *model = [AVBookModel bookWithName:name
                                                image:[UIImage imageNamed: thumbnails[index++]]];
            
            [_data addObject:model];
        }
        

    
    }
    return self;
}

#pragma mark - public

- (NSArray *)listOfData {
    return self.data;
}

#pragma mark - private




@end

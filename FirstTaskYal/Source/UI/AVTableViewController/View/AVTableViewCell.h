//
//  AVTableViewCell.h
//  FirstTaskYal
//
//  Created by Admin on 05.08.15.
//  Copyright (c) 2015 bla Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AVBookModel;

extern NSString *const AVTableViewCellPrototype;

@interface AVTableViewCell : UITableViewCell

- (void)setupWithData:(AVBookModel *)model;

@end

//
//  AVTableViewCell.m
//  FirstTaskYal
//
//  Created by Admin on 05.08.15.
//  Copyright (c) 2015 bla Ltd. All rights reserved.
//

#import "AVTableViewCell.h"
#import "AVBookModel.h"

NSString *const AVTableViewCellPrototype = @"AVTableViewCellPrototype";

@interface AVTableViewCell()

@property (nonatomic, weak) IBOutlet UIImageView *imageView;
@property (nonatomic, weak) IBOutlet UILabel *textLabel;

@end;

@implementation AVTableViewCell

@synthesize imageView = _imageView;
@synthesize textLabel = _textLabel;

- (void)setupWithData:(AVBookModel *)model {
    self.imageView.image = model.bookImage;
    self.textLabel.text = model.bookName;
}

@end

//
//  AVCollectionViewCell.m
//  FirstTaskYal
//
//  Created by Admin on 18.08.15.
//  Copyright (c) 2015 bla Ltd. All rights reserved.
//

#import "AVCollectionViewCell.h"
#import "AVBookModel.h"

NSString *const AVCollectionViewCellPrototype = @"AVCollectionViewCellPrototype";

@interface AVCollectionViewCell ()



@end

@implementation AVCollectionViewCell

- (void)zetupWithData:(AVBookModel *) model {
    self.viewImage.image = model.bookImage;
}

@end

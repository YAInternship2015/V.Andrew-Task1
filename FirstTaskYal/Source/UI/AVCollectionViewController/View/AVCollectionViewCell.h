//
//  AVCollectionViewCell.h
//  FirstTaskYal
//
//  Created by Admin on 18.08.15.
//  Copyright (c) 2015 bla Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AVBookModel;
extern NSString *const AVCollectionViewCellPrototype;

@interface AVCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *viewImage;

- (void)zetupWithData:(AVBookModel *) model;

@end

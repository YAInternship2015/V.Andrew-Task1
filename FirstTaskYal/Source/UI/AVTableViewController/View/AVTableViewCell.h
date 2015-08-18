//
//  AVTableViewCell.h
//  FirstTaskYal
//
//  Created by Admin on 05.08.15.
//  Copyright (c) 2015 bla Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AVTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UIImageView    *cellImageView;
@property (nonatomic, weak) IBOutlet UILabel        *cellTextLabel;

@end

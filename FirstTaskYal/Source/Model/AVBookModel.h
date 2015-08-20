//
//  AVBookModel.h
//  FirstTaskYal
//
//  Created by Admin on 18.08.15.
//  Copyright (c) 2015 bla Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AVBookModel : NSObject

@property (nonatomic, copy)   NSString  *bookName;
@property (nonatomic, strong) UIImage   *bookImage;

+ (id)bookWithName:(NSString *)name image:(UIImage *)image;

@end

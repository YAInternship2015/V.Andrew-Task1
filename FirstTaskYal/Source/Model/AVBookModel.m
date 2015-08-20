//
//  AVBookModel.m
//  FirstTaskYal
//
//  Created by Admin on 18.08.15.
//  Copyright (c) 2015 bla Ltd. All rights reserved.
//

#import "AVBookModel.h"

@interface AVBookModel ()

@end

@implementation AVBookModel

+ (id)bookWithName:(NSString *)name image:(UIImage *)image {
    id obj = [[self alloc] init];
    if (obj) {
        [obj setBookImage: image];
        [obj setBookName: name];
    }
    return obj;
}

@end

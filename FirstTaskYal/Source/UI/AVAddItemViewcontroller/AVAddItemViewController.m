//
//  AVAddItemViewController.m
//  FirstTaskYal
//
//  Created by Admin on 19.08.15.
//  Copyright (c) 2015 bla Ltd. All rights reserved.
//

#import "AVAddItemViewController.h"

@interface AVAddItemViewController ()

@end

@implementation AVAddItemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - action

- (IBAction)back:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end

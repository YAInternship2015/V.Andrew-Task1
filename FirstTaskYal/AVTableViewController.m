//
//  AVTableViewController.m
//  FirstTaskYal
//
//  Created by Admin on 05.08.15.
//  Copyright (c) 2015 bla Ltd. All rights reserved.
//

#import "AVTableViewController.h"
#import "AVTableViewCell.h"

@interface AVTableViewController ()

@property (strong, nonatomic) NSArray *imagesList;
@property (strong, nonatomic) NSArray *textsList;

@end

@implementation AVTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.textsList = [[NSArray alloc] initWithObjects:@"row #1", @"row #2", @"row #3", @"row #4",
                      @"row #5", @"row #6", @"row #7", @"row #8", @"row #9", @"row #10", nil];
    
    self.imagesList = [[NSArray alloc] initWithObjects:@"1.jpg", @"2.jpg", @"3.jpg", @"1.jpg",
                       @"2.jpg", @"3.jpg", @"1.jpg", @"2.jpg", @"3.jpg", @"1.jpg", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.textsList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AVTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellsPrototype" forIndexPath:indexPath];
    
    NSInteger rowIndex = indexPath.row;
    
    //UILabel *rowText = (UILabel*)[cell viewWithTag: 150];
    //rowText.text
    cell.cellTextLabel.text = [self.textsList objectAtIndex: rowIndex];
    
    //UIImageView *rowImage = (UIImageView*)[cell viewWithTag:100];
    //rowImage.image
    cell.cellImageView.image = [UIImage imageNamed: [self.imagesList objectAtIndex: rowIndex]];
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  ChecklistsViewController.m
//  Checklists
//
//  Created by Mike Perry on 8/5/13.
//  Copyright (c) 2013 Mike Perry. All rights reserved.
//

#import "ChecklistsViewController.h"
#import "ChecklistItem.h"

@interface ChecklistsViewController ()

@end

@implementation ChecklistsViewController
{
    NSMutableArray *items;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    items = [[NSMutableArray alloc] initWithCapacity:20];
    
    ChecklistItem *item;
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Walk the dog";
    item.checked = NO;
    [items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Brush my teeth";
    item.checked = YES;
    [items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Learn iOS development";
    item.checked = YES;
    [items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Soccer practice";
    item.checked = NO;
    [items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Eat ice cream";
    item.checked = YES;
    [items addObject:item];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationPortrait);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [items count];
}

- (void)configureCheckmarkForCell:(UITableViewCell *)cell withChecklistItem:(ChecklistItem *)item
{
    if (item.checked) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
}

- (void)configureTextForCell:(UITableViewCell *)cell withChecklistItem:(ChecklistItem *)item
{
    UILabel *label = (UILabel *)[cell viewWithTag:1000];
    label.text = item.text;
}

#pragma mark - UITableView Data Source
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    
    ChecklistItem *item = [items objectAtIndex:indexPath.row];
    
    [self configureTextForCell:cell withChecklistItem:item];
    [self configureCheckmarkForCell:cell withChecklistItem:item];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [items removeObjectAtIndex:indexPath.row];
    
    NSArray *indexPaths = [NSArray arrayWithObject:indexPath];
    [tableView deleteRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationAutomatic];
}
#pragma mark - UITableView Delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    ChecklistItem *item = [items objectAtIndex:indexPath.row];
    [item toggleChecked];
    
    [self configureCheckmarkForCell:cell withChecklistItem:item];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (IBAction)addItem
{
    int newRowIndex = [items count];
    
    ChecklistItem *item = [[ChecklistItem alloc] init];
    item.text = @"I am a new row";
    item.checked = YES;
    [items addObject:item];
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:newRowIndex inSection:0];
    NSArray *indexPaths = [NSArray arrayWithObject:indexPath];
    [self.tableView insertRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationAutomatic];
}



@end

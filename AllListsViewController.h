//
//  AllListsViewController.h
//  Checklists
//
//  Created by Mike Perry on 8/19/13.
//  Copyright (c) 2013 Mike Perry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListDetailViewController.h"
#import "DataModel.h"

@interface AllListsViewController : UITableViewController <ListDetailViewControllerDelegate>
@property (strong, nonatomic) DataModel *dataModel;
@end

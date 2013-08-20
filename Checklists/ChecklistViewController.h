//
//  ChecklistViewController.h
//  Checklists
//
//  Created by Mike Perry on 8/5/13.
//  Copyright (c) 2013 Mike Perry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemDetailViewController.h"

@class Checklist;

@interface ChecklistViewController : UITableViewController <ItemDetailViewControllerDelegate>

@property (strong,nonatomic) Checklist *checklist;


@end

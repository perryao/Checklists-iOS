//
//  AddItemViewController.h
//  Checklists
//
//  Created by Mike Perry on 8/8/13.
//  Copyright (c) 2013 Mike Perry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddItemViewController : UITableViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *doneBarButton;

- (IBAction)cancel;
- (IBAction)done;

@end

//
//  ChecklistItem.h
//  Checklists
//
//  Created by Mike Perry on 8/5/13.
//  Copyright (c) 2013 Mike Perry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChecklistItem : NSObject <NSCoding>

@property (nonatomic, copy) NSString *text;
@property (nonatomic, assign) BOOL checked;

- (void)toggleChecked;

@end

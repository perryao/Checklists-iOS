//
//  Checklist.h
//  Checklists
//
//  Created by Mike Perry on 8/19/13.
//  Copyright (c) 2013 Mike Perry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Checklist : NSObject <NSCoding>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSMutableArray *items;

@end

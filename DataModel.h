//
//  DataModel.h
//  Checklists
//
//  Created by Mike Perry on 9/3/13.
//  Copyright (c) 2013 Mike Perry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModel : NSObject

@property (nonatomic, strong) NSMutableArray *lists;

- (void)saveChecklists;

@end

//
//  GroceryCategory.h
//  Groceries
//
//  Created by Toleen Jaradat on 6/28/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GroceryItem.h"

@interface GroceryCategory : NSObject

@property (nonatomic,copy) NSString *groceryTitle;
@property (nonatomic, copy) NSMutableArray *groceryItems;

@end

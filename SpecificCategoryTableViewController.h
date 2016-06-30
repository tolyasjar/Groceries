//
//  SpecificCategoryTableViewController.h
//  Groceries
//
//  Created by Toleen Jaradat on 6/29/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryItem.h"
#import "GroceryCategory.h"
#import "AddItemViewController.h"


@interface SpecificCategoryTableViewController : UITableViewController 

@property (nonnull,strong) GroceryCategory *groceryCategory;

@end

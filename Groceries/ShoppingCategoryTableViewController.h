//
//  ShoppingCategoryTableViewController.h
//  Groceries
//
//  Created by Toleen Jaradat on 6/28/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryCategory.h"
#import "GroceryItem.h"
#import "AddCategoryViewController.h"
#import "SpecificCategoryTableViewController.h"

@interface ShoppingCategoryTableViewController : UITableViewController

@property (nonatomic,strong) NSMutableArray *groceryCategoryArray;

@end

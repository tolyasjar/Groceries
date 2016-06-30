//
//  AddItemViewController.h
//  Groceries
//
//  Created by Toleen Jaradat on 6/29/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryItem.h"


@protocol AddingNewItem

-(void) addItemDidSave:(GroceryItem *) groceryItem;

@end

@interface AddItemViewController : UIViewController

@property (nonatomic,weak) id <AddingNewItem> addingNewItemdelegate;
@property (nonatomic,weak) IBOutlet UITextField *groceryItemTextField;


@end

//
//  AddCategoryViewController.h
//  Groceries
//
//  Created by Toleen Jaradat on 6/28/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryItem.h"
#import "GroceryCategory.h"

@protocol AddingNewCategory <NSObject>

- (void) addNewCategoryDidSave:(GroceryCategory *) groceryCategory;

@end

@interface AddCategoryViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic,weak) id <AddingNewCategory> addingNewCategorydelegate;
@property (nonatomic,weak) IBOutlet UITextField *groceryCategoryTextField;


@end

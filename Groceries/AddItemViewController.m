//
//  AddItemViewController.m
//  Groceries
//
//  Created by Toleen Jaradat on 6/29/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "AddItemViewController.h"

@interface AddItemViewController ()

@end

@implementation AddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES;
}

-(IBAction) close {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(IBAction)save :(id)sender {
    
    GroceryItem *groceryItem = [[GroceryItem alloc]init];
    
    groceryItem.groceryItem = self.groceryItemTextField.text;
    
    [self.addingNewItemdelegate addItemDidSave:groceryItem];
    
}

@end

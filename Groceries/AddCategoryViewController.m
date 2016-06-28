//
//  AddCategoryViewController.m
//  Groceries
//
//  Created by Toleen Jaradat on 6/28/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "AddCategoryViewController.h"

@interface AddCategoryViewController ()

@end

@implementation AddCategoryViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.groceryCategoryTextField.delegate = self;
   
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

    GroceryCategory *groceryCategory = [[GroceryCategory alloc]init];
    
    groceryCategory.groceryTitle = self.groceryCategoryTextField.text;
    
    [self.addingNewCategorydelegate addNewCategoryDidSave:groceryCategory];
    
}

- (void) addingNewCategory:(NSString *) x {
    
  //  groceryCategoryArray[indexPath.row];
    NSLog(@"Firing the delegate");
    
}



@end

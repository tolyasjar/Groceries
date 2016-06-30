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

-(IBAction) close  {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(IBAction)save :(id)sender {

    // init groceryCategory & groceryCategoryItems array before adding anything to it

    GroceryCategory *groceryCategory = [[GroceryCategory alloc]init];
    groceryCategory.groceryItems = [[NSMutableArray alloc]init];
    
    groceryCategory.groceryTitle = self.groceryCategoryTextField.text;
    
    [self.addingNewCategorydelegate addNewCategoryDidSave:groceryCategory]; //fire the delegate method 
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}



@end

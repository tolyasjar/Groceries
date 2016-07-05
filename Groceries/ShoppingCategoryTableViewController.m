//
//  ShoppingCategoryTableViewController.m
//  Groceries
//
//  Created by Toleen Jaradat on 6/28/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "ShoppingCategoryTableViewController.h"

@interface ShoppingCategoryTableViewController () <AddingNewCategory>

@end

@implementation ShoppingCategoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.groceryCategoryArray = [[NSMutableArray alloc]init];
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    
    //  Retrieving the data
        NSData *groceryCategoryData = [[NSUserDefaults standardUserDefaults] valueForKey:@"groecryCategoryArray"];
    
        NSMutableArray *array = (NSMutableArray *) [NSKeyedUnarchiver unarchiveObjectWithData:groceryCategoryData];
    
        if(array != nil)
        {
        self.groceryCategoryArray = array;
        [self.tableView reloadData];
        }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"AddCategoryViewControllerSegue"])
    {
    
        AddCategoryViewController *addCategoryViewController = (AddCategoryViewController *) segue.destinationViewController;
        
    addCategoryViewController.addingNewCategorydelegate = self;
        
    }
     else if  ([segue.identifier isEqualToString:@"SpecificCategoryTableViewControllerSegue"])
     {
         NSIndexPath *selectedIndexPath = self.tableView.indexPathForSelectedRow;
                  
         GroceryCategory *groceryCategory = self.groceryCategoryArray[selectedIndexPath.row];
       
         SpecificCategoryTableViewController *specificCategoryTableViewController = (SpecificCategoryTableViewController *) segue.destinationViewController;
         
         specificCategoryTableViewController.groceryCategory = groceryCategory;
        
    }
    
}

- (void) addNewCategoryDidSave:(GroceryCategory *) groceryCategory {
    
   
    [self.groceryCategoryArray addObject:groceryCategory];
    
    //Saving Data
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSData *groceryCategoryData = [NSKeyedArchiver archivedDataWithRootObject:self.groceryCategoryArray];
    
    [userDefaults setObject:groceryCategoryData forKey:@"groecryCategoryArray"];
    [userDefaults synchronize];
    //
    
    [self.tableView reloadData];
        
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.groceryCategoryArray.count ;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GroceryCategoryCell" forIndexPath:indexPath];
    
    GroceryCategory *groceryCategory = self.groceryCategoryArray[indexPath.row];
    cell.textLabel.text =  groceryCategory.groceryTitle;
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

@end

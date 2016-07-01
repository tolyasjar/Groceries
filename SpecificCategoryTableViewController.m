////
//  SpecificCategoryTableViewController.m
//  Groceries
//
//  Created by Toleen Jaradat on 6/29/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "SpecificCategoryTableViewController.h"

@interface SpecificCategoryTableViewController () <AddingNewItem>

@end

@implementation SpecificCategoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.groceryCategory.groceryTitle;
    self.navigationController.navigationBar.backgroundColor = [UIColor orangeColor];
    
    //  Retrieving the data
            NSData *groceryItemsData = [[NSUserDefaults standardUserDefaults] valueForKey:@"groecryItemsArray"];
    
            NSMutableArray *array = (NSMutableArray *) [NSKeyedUnarchiver unarchiveObjectWithData:groceryItemsData];
    
    if(array != nil)
    {
        self.groceryCategory.groceryItems = array;
        [self.tableView reloadData];
    }

   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
        
    AddItemViewController *addItemViewController = (AddItemViewController *) segue.destinationViewController;
    
    addItemViewController.addingNewItemdelegate = self;
 
}

-(void) addItemDidSave:(GroceryItem *) groceryItem {
    
 
    [self.groceryCategory.groceryItems addObject:groceryItem];
    
    //Saving Data
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSData *groceryItemsData = [NSKeyedArchiver archivedDataWithRootObject:self.groceryCategory.groceryItems];
    
    [userDefaults setObject:groceryItemsData forKey:@"groecryItemsArray"];
    [userDefaults synchronize];
    
    //
    
    [self.tableView reloadData];
    
    [self dismissViewControllerAnimated:YES completion:nil];
        
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.groceryCategory.groceryItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryItemCell" forIndexPath:indexPath];
    
    GroceryItem *groceryItem = self.groceryCategory.groceryItems[indexPath.row];
    cell.textLabel.text = groceryItem.groceryItem;
    
    return cell;
}


@end

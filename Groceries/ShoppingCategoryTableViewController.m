//
//  ShoppingCategoryTableViewController.m
//  Groceries
//
//  Created by Toleen Jaradat on 6/28/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "ShoppingCategoryTableViewController.h"

@interface ShoppingCategoryTableViewController ()

@end

@implementation ShoppingCategoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    UINavigationController *navigationController = (UINavigationController *) segue.destinationViewController;
    
    NSArray *viewControllers = navigationController.viewControllers;
    
    
    AddCategoryViewController *addCategoryViewController = (AddCategoryViewController *) viewControllers.firstObject;
    
    addCategoryViewController.addingNewCategorydelegate = self;
    
    //  addAccountViewController.customerName = @"John Doe";
}

- (void) addNewCategoryDidSave:(GroceryCategory *) groceryCategory {
    
    
    [self.groceryCategoryArray addObject:groceryCategory];
    
    [self.tableView reloadData];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.groceryCategoryArray.count ;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GroceryCategoryCell" forIndexPath:indexPath];
    
    cell.textLabel.text =  self.groceryCategoryArray[indexPath.row];
    
    return cell;
}

@end

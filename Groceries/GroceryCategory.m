//
//  GroceryCategory.m
//  Groceries
//
//  Created by Toleen Jaradat on 6/28/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "GroceryCategory.h"

@implementation GroceryCategory 

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    
    self.groceryTitle = [coder decodeObjectForKey:@"groceryTitle"];
    self.groceryItems = [coder decodeObjectForKey:@"groceryItems"];
    
    return self;
    
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.groceryTitle forKey:@"groceryTitle"];
    [coder encodeObject:self.groceryItems forKey:@"groceryItems"];
}

@end

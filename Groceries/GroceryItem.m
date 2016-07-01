//
//  GroceryItem.m
//  Groceries
//
//  Created by Toleen Jaradat on 6/28/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "GroceryItem.h"

@implementation GroceryItem

- (instancetype)initWithCoder:(NSCoder *)coder

{
    self = [super init];
    
    self.groceryItem = [coder decodeObjectForKey:@"groceryItem"];
    
    return self;
    
}

- (void)encodeWithCoder:(NSCoder *)coder

{
    [coder encodeObject:self.groceryItem forKey:@"groceryItem"];

}


@end

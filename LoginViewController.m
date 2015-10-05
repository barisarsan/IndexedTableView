//
//  LoginViewController.m
//  IndexedTableView
//
//  Created by Baris Arsan on 30/09/15.
//  Copyright © 2015 BarisArsan. All rights reserved.
//

#import "LoginViewController.h"


@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    content = [DataGenerator wordsFromLetters];
    indices = [content valueForKey:@"headerTitle"];
    
    NSLog(@"Contact -> Baris Arsan / ba.barisarsan@gmail.com");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [content count];
}

// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[content objectAtIndex:section] objectForKey:@"rowValues"] count] ;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [[[content objectAtIndex:indexPath.section] objectForKey:@"rowValues"]
                           objectAtIndex:indexPath.row];
    
    
    return cell;
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return [content valueForKey:@"headerTitle"];
}

- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    return [indices indexOfObject:title];
}

- (NSString *)tableView:(UITableView *)aTableView titleForHeaderInSection:(NSInteger)section {
    return [[content objectAtIndex:section] objectForKey:@"headerTitle"];
    
}

@end

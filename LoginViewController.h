//
//  LoginViewController.h
//  IndexedTableView
//
//  Created by Baris Arsan on 30/09/15.
//  Copyright © 2015 BarisArsan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataGenerator.h"

@interface LoginViewController : UIViewController <UITableViewDataSource,UITableViewDelegate> {
    NSArray *content;
    NSArray *indices;
}

@property (strong, nonatomic) IBOutlet UITableView *tableview;


@end

//
//  ViewController.h
//  custom_table_view
//
//  Created by Mac on 23/05/18.
//  Copyright © 2018 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "stud_cell.h"
#import "view_two.h"

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource,StudentDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tbl_stud_info;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *act_indicator_one;

@property(strong,nonatomic)NSMutableArray *arr_mut_names;
@end


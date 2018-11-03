//
//  dashboard.m
//  custom_table_view
//
//  Created by Mac on 29/05/18.
//  Copyright © 2018 Mac. All rights reserved.
//

#import "dashboard.h"

@interface dashboard ()

@end

@implementation dashboard

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btn_push_action:(id)sender {
    
    view_two *myViewController=[self.storyboard instantiateViewControllerWithIdentifier:@"view_two"];
    myViewController.str_one = @"string passed is ";
    [self.navigationController pushViewController:myViewController animated:YES];
}
@end

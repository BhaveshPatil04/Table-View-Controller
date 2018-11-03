//
//  view_3.m
//  custom_table_view
//
//  Created by Mac on 24/05/18.
//  Copyright © 2018 Mac. All rights reserved.
//

#import "view_3.h"

@interface view_3 ()

@end

@implementation view_3

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

- (IBAction)btn_pop_action:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)btn_pop_to_root_action:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)Test_Action:(id)sender
{
    
}
@end

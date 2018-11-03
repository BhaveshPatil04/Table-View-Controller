//
//  view_two.m
//  custom_table_view
//
//  Created by Mac on 24/05/18.
//  Copyright © 2018 Mac. All rights reserved.
//

#import "view_two.h"

@interface view_two ()

@end

@implementation view_two
@synthesize str_one;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"string value %@",str_one);
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
    ViewController3 *myViewController=[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController3"];
    [self.navigationController pushViewController:myViewController animated:YES];
}
@end

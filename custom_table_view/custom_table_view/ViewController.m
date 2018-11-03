//
//  ViewController.m
//  custom_table_view
//
//  Created by Mac on 23/05/18.
//  Copyright © 2018 Mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize arr_mut_names;
@synthesize act_indicator_one;

- (void)viewDidLoad {
    [act_indicator_one startAnimating];
    [super viewDidLoad];
    [self Get_mutArray];
    
    self.tbl_stud_info.delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)Get_mutArray
{
    arr_mut_names = [[NSMutableArray alloc]init ];
    NSDictionary *dict_student_info;
    dict_student_info=@
    {
        @"First_name":@"Fb",
        @"Last_name":@"Patil",
        @"Rollnumber":[NSNumber numberWithInt:2],
        @"Percentage":[NSNumber numberWithFloat:70],
    };
    NSDictionary *dict_stud_one;
    dict_stud_one = @
    {
        @"First_name":@"Fb",
        @"Last_name":@"Patil",
        @"Rollnumber":[NSNumber numberWithInt:3],
        @"Percentage":[NSNumber numberWithFloat:80],
    };
    [arr_mut_names addObject:dict_student_info];
    [arr_mut_names addObject:dict_stud_one];
    [_tbl_stud_info reloadData];
    NSLog(@"Student info=%@",arr_mut_names);
    
    NSArray *Arr_first_name =[[NSArray alloc]init];
    Arr_first_name=[arr_mut_names valueForKey:@"First_name"];
    NSLog(@"First_name =%@",Arr_first_name);
    NSString *str_first_name=[Arr_first_name objectAtIndex:0];
    NSLog(@"object at index = %@",str_first_name);
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [arr_mut_names count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    stud_cell *cell = [_tbl_stud_info dequeueReusableCellWithIdentifier:@"stud_cell"];
//    if (cell == nil) {
//        
//        
//        cell = [[stud_cell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"stud_cell"];
//        
//        cell.selectionStyle = UITableViewCellSelectionStyleNone;
//    }
    cell.delegate = self;
    [act_indicator_one stopAnimating];
   // cell.btn_one.tag = indexPath.row;
    cell.btn_two.tag = indexPath.row;
    cell.btn_three.tag = indexPath.row;
    
   // [cell.btn_one setTitle:[[arr_mut_names valueForKey:@"First_name" ] objectAtIndex:indexPath.row] forState:UIControlStateNormal];
    [cell.img_fb setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",[[arr_mut_names valueForKey:@"First_name" ] objectAtIndex:indexPath.row]]]];
    
    
    
     [cell.btn_two setTitle:[[arr_mut_names valueForKey:@"Last_name" ] objectAtIndex:indexPath.row] forState:UIControlStateNormal];
    
     [cell.btn_three setTitle:[NSString stringWithFormat:@"%f",[[[arr_mut_names valueForKey:@"Percentage" ] objectAtIndex:indexPath.row]floatValue]] forState:UIControlStateNormal];
    //cell.lbl_first_name.text = [[arr_mut_names valueForKey:@"First_name" ] objectAtIndex:indexPath.row];
    //cell.lbl_last_name.text = [[arr_mut_names valueForKey:@"Last_name" ] objectAtIndex:indexPath.row];
    cell.lbl_percent.text = [NSString stringWithFormat:@"%f",[[[arr_mut_names valueForKey:@"Percentage" ] objectAtIndex:indexPath.row]floatValue]];
    //cell.lbl_roll_no.text = [[[arr_mut_names valueForKey:@"Rollnumber" ] objectAtIndex:indexPath.row]intValue];
     cell.lbl_roll_no.text = [NSString stringWithFormat:@"%d",[[[arr_mut_names valueForKey:@"Rollnumber" ] objectAtIndex:indexPath.row]intValue]];
    //cell.imageView.image = [UIImage imageNamed:@"index"];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 120.0;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    view_two *myViewController=[self.storyboard instantiateViewControllerWithIdentifier:@"view_two"];
    myViewController.str_one = @"string passed is ";
    [self.navigationController pushViewController:myViewController animated:YES];
}
-(void)btnoneaction_event:(NSInteger)row
{
     NSLog(@"Selected First Name is  : %@",[[arr_mut_names valueForKey:@"First_name"] objectAtIndex:row]);
}
-(void)btntwoaction_event:(NSInteger)row
{//Last_name
    NSLog(@"Selected Last Name is  : %@",[[arr_mut_names valueForKey:@"Last_name"] objectAtIndex:row]);
}
-(void)btnthreeaction_event:(NSInteger)row
{
     NSLog(@"Selected Percentage is  : %@",[[arr_mut_names valueForKey:@"Percentage"] objectAtIndex:row]);
}
@end

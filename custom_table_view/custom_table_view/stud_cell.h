//
//  stud_cell.h
//  custom_table_view
//
//  Created by Mac on 23/05/18.
//  Copyright © 2018 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StudentDelegate <NSObject>
@optional
-(void)btnoneaction_event:(NSInteger) row;
-(void)btntwoaction_event:(NSInteger) row;
-(void)btnthreeaction_event:(NSInteger) row;

@end

@interface stud_cell : UITableViewCell
@property(weak,nonatomic) id <StudentDelegate> delegate;
@property (strong, nonatomic) IBOutlet UILabel *lbl_first_name;
@property (strong, nonatomic) IBOutlet UILabel *lbl_last_name;
@property (strong, nonatomic) IBOutlet UILabel *lbl_percent;
@property (strong, nonatomic) IBOutlet UILabel *lbl_roll_no;
@property (strong, nonatomic) IBOutlet UIButton *btn_one;
@property (strong, nonatomic) IBOutlet UIButton *btn_two;
@property (strong, nonatomic) IBOutlet UIButton *btn_three;
- (IBAction)btn_one_action:(id)sender;
- (IBAction)btn_two_action:(id)sender;
- (IBAction)btn_three_action:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *img_fb;

@end

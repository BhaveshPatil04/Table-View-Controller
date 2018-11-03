//
//  stud_cell.m
//  custom_table_view
//
//  Created by Mac on 23/05/18.
//  Copyright © 2018 Mac. All rights reserved.
//

#import "stud_cell.h"

@implementation stud_cell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)btn_one_action:(UIButton *)sender
{
    [self.delegate btnoneaction_event:sender.tag];
}

- (IBAction)btn_two_action:(UIButton *)sender
{
    [self.delegate btntwoaction_event:sender.tag];
}

- (IBAction)btn_three_action:(UIButton *)sender
{
    [self.delegate btnthreeaction_event:sender.tag];
}
@end

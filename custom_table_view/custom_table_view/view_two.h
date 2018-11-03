//
//  view_two.h
//  custom_table_view
//
//  Created by Mac on 24/05/18.
//  Copyright © 2018 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController3.h"

@interface view_two : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *btn_push;
- (IBAction)btn_push_action:(id)sender;
@property(strong,nonatomic)NSString *str_one;
@end

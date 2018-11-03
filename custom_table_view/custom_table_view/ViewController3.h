//
//  ViewController3.h
//  custom_table_view
//
//  Created by Mac on 29/05/18.
//  Copyright © 2018 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController3 : UIViewController
- (IBAction)btnPopAction:(id)sender;
- (IBAction)btnPopToRootAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnpop;
@property (strong, nonatomic) IBOutlet UIButton *btnPopToRoot;
@end

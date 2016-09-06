//
//  ViewController.h
//  TestDemo
//
//  Created by lizhaojie on 16/8/11.
//  Copyright © 2016年 siemens. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIButton *showAlertBtn;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;
@property (weak, nonatomic) IBOutlet UIButton *skip;
- (IBAction)tapBtn:(id)sender;
- (IBAction)skipNextVC:(id)sender;

- (IBAction)showAlertView:(id)sender;
- (NSString*)calculateLabelTextWithValue:(NSInteger)value;
@end


//
//  ViewController.m
//  TestDemo
//
//  Created by lizhaojie on 16/8/11.
//  Copyright © 2016年 siemens. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
@interface ViewController ()<UIAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tapBtn:(id)sender {
    UIButton *btn = (UIButton*)sender;
    self.valueLabel.text = [NSString stringWithFormat:@"%ld",btn.tag+1];
//    NSLog(@"labelText === %@",self.valueLabel.text);
//    [self calculateLabelTextWithValue:btn.tag];
    
}

- (IBAction)skipNextVC:(id)sender {
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NextViewController *nextVC = [story instantiateViewControllerWithIdentifier:@"NextViewController"];
    [self presentViewController:nextVC animated:YES completion:nil];
}

- (IBAction)showAlertView:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"提示信息"
                          message:@"alertview show!!!"
                          delegate:nil
                          cancelButtonTitle:@"取消"
                          otherButtonTitles:@"确定",nil];
    // 显示
    [alert show];}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        NSLog(@"点击了确定按钮");
    
    }
    else {
        NSLog(@"点击了取消按钮");
    }
}
- (NSString*)calculateLabelTextWithValue:(NSInteger)value{
    NSLog(@"tap!!!");
    self.valueLabel.text = [NSString stringWithFormat:@"%ld",value+1];
    NSLog(@"labelText === %@",self.valueLabel.text);
    return self.valueLabel.text;

}

@end

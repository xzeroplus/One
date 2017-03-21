//
//  LabelViewController.m
//  One
//
//  Created by X-ZERO on 2017/3/20.
//  Copyright © 2017年 X-ZERO. All rights reserved.
//

#import "LabelViewController.h"

@interface LabelViewController ()

@property (strong,nonatomic)UILabel *label;
@property (strong,nonatomic)UIButton *button;

@end


@implementation LabelViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGRect window = [[UIScreen mainScreen]bounds];
    
    NSInteger height = window.size.height;
    NSInteger width = window.size.width;
    
    self.label = [[UILabel alloc]initWithFrame:CGRectMake((width-100)/2, (height-20)/3, 100, 20)];
    
    self.label.text = @"HelloWorld";
    
    self.button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [self.button setTitle:@"Button" forState:UIControlStateNormal];
    
    self.button.frame = CGRectMake((width-100)/2, (height-20)/3*2, 100, 20);
    
    [self.view addSubview:self.label];
    [self.view addSubview:self.button];
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

@end

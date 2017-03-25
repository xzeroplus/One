//
//  ActivityIndicatorViewController.m
//  One
//
//  Created by X-ZERO on 2017/3/25.
//  Copyright © 2017年 X-ZERO. All rights reserved.
//

#import "ActivityIndicatorViewController.h"

@interface ActivityIndicatorViewController ()
@property (strong,nonatomic) UIActivityIndicatorView *activity;
@property (strong,nonatomic) UIProgressView *progress;
@end

@implementation ActivityIndicatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.activity = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [self.activity setFrame:CGRectMake(175, 150, 10, 10)];
    [self.activity startAnimating];
    
    self.progress = [[UIProgressView alloc]initWithFrame:CGRectMake(160, 350, 56, 10)];
    
    [self.view addSubview:self.activity];
    [self.view addSubview:self.progress];
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

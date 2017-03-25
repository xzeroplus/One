//
//  AlertViewController.m
//  One
//
//  Created by X-ZERO on 2017/3/24.
//  Copyright © 2017年 X-ZERO. All rights reserved.
//

#import "AlertViewController.h"

@interface AlertViewController ()
@property (strong,nonatomic)UIAlertController *alert;
@property (strong,nonatomic)UIButton *showAlertButton;
@end

@implementation AlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.alert = [UIAlertController alertControllerWithTitle:@"警告框" message:@"Test" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *yesButton = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:nil];
    UIAlertAction *noButton = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleCancel handler:nil];
    
    [self.alert addAction:yesButton];
    [self.alert addAction:noButton];
    
    self.showAlertButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.showAlertButton.frame = CGRectMake(140, 300, 80, 50);
    [self.showAlertButton setTitle:@"show Alert" forState:UIControlStateNormal];
    
    [self.showAlertButton addTarget:self action:@selector(showAlert:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.showAlertButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showAlert:(id)sender{
    
    
    [self presentViewController:self.alert animated:true completion:nil];
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

//
//  SwitchViewController.m
//  One
//
//  Created by X-ZERO on 2017/3/23.
//  Copyright © 2017年 X-ZERO. All rights reserved.
//

#import "SwitchViewController.h"

@interface SwitchViewController ()
@property (strong,nonatomic)UISwitch* Switch;
@property (strong,nonatomic)UISlider* slider;
@property (strong,nonatomic)UISegmentedControl* segmentedControl;
@end

@implementation SwitchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.Switch = [[UISwitch alloc]initWithFrame:CGRectMake(168, 100, 0, 0)];
    
    self.slider = [[UISlider alloc]initWithFrame:CGRectMake(138, 200, 100, 20)];
    self.slider.maximumValue = 100;
    self.slider.minimumValue = 1;
    
    NSArray* item = @[@"left",@"right"];
    self.segmentedControl = [[UISegmentedControl alloc]initWithItems:item];
    self.segmentedControl.frame = CGRectMake(88, 300, 200, 20);
    [self.segmentedControl addTarget:self action:@selector(segmentedChanged:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:self.slider];
    [self.view addSubview:self.Switch];
    [self.view addSubview:self.segmentedControl];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)segmentedChanged:(id)sender{
    UISegmentedControl *sc = (UISegmentedControl*)sender;
    
    if(sc.selectedSegmentIndex == 0){
        [self.Switch setHidden:true];
    }else [self.Switch setHidden:false];
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

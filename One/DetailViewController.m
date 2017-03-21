//
//  DetailViewController.m
//  One
//
//  Created by X-ZERO on 2017/3/20.
//  Copyright © 2017年 X-ZERO. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
    UIViewController *childViewConrtorller;
    // Update the user interface for the detail item.
    if ([self.selectView  isEqual: @"Label"]) {
        LabelViewController *labelViewController = [[LabelViewController alloc]init];
        
        childViewConrtorller = (UIViewController*)labelViewController;
        
    }else if([self.selectView  isEqual: @"Text"]){
        TextViewController *textViewController = [[TextViewController alloc]init];
        
        childViewConrtorller = (UIViewController*)textViewController;
    }
    
    
    [self addChildViewController:childViewConrtorller];
    
    [self.view addSubview:childViewConrtorller.view];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self configureView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end

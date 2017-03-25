//
//  DetailViewController.m
//  One
//
//  Created by X-ZERO on 2017/3/20.
//  Copyright © 2017年 X-ZERO. All rights reserved.
//

#import "DetailViewController.h"
#import "LabelViewController.h"
#import "TextViewController.h"
#import "SwitchViewController.h"
#import "WKWebViewController.h"
#import "AlertViewController.h"
#import "ActivityIndicatorViewController.h"

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
    }else if([self.selectView  isEqual: @"Switch"]){
        SwitchViewController *switchViewController = [[SwitchViewController alloc]init];
        
        childViewConrtorller = switchViewController;
    }else if ([self.selectView isEqualToString:@"WKWeb"]){
        WKWebViewController *wkWeb = [[WKWebViewController alloc]init];
        
        childViewConrtorller = wkWeb;
    }else if([self.selectView isEqualToString:@"Alert"]){
        AlertViewController *Alert = [[AlertViewController alloc]init];
        
        childViewConrtorller = Alert;
    }else if([self.selectView isEqualToString:@"ActivityIndicator"]){
        ActivityIndicatorViewController *activity = [[ActivityIndicatorViewController alloc]init];
        
        childViewConrtorller = activity;
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

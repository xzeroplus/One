//
//  WKWebViewController.m
//  One
//
//  Created by X-ZERO on 2017/3/24.
//  Copyright © 2017年 X-ZERO. All rights reserved.
//

#import "WKWebViewController.h"
#import <WebKit/WebKit.h>

@interface WKWebViewController ()<WKNavigationDelegate>
@property (strong,nonatomic)WKWebView *WKWeb;
@end

@implementation WKWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CGRect screen = [[UIScreen mainScreen]bounds];
    
    self.WKWeb = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0 , screen.size.width, screen.size.height)];
    
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.WKWeb loadRequest:request];
    self.WKWeb.navigationDelegate = self;
    
    [self.view addSubview:self.WKWeb];
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

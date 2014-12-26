//
//  AboutViewController.m
//  CustomTable
//
//  Created by Cyrilshanway on 2014/12/25.
//  Copyright (c) 2014年 Cyrilshanway. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    self.webView.delegate = self;
    [self.webView loadRequest:request];
    
    /*
     NSURL *url = [NSURL URLWithString:@"http://www.dubookreading.com/"];
     NSURLRequest *request = [NSURLRequest requestWithURL:url];
     
     self.webView.delegate = self;
     [self.webView loadRequest:request];
     */
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

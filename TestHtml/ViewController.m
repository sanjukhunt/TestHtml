//
//  ViewController.m
//  TestHtml
//
//  Created by sanju on 30/03/16.
//  Copyright © 2016 Sanju Khunt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>
{
    IBOutlet UIWebView *htmlWebViw;
}
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

-(IBAction)onLoadBtn:(id)sender
{
//    NSString *resourceDir = [[NSBundle mainBundle] resourcePath];
//    //NSArray *pathComponents = [NSArray arrayWithObjects:resourceDir, @"Documentation", @"html", @"index.html", nil];
//    NSArray *pathComponents = [NSArray arrayWithObjects:resourceDir,@"apptour" @"index.html", nil];
//    NSURL *indexUrl = [NSURL fileURLWithPathComponents:pathComponents];
//    NSURLRequest *req = [NSURLRequest requestWithURL:indexUrl];
//    [htmlWebViw loadRequest:req];

    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"apptour"]];
    [htmlWebViw loadRequest:[NSURLRequest requestWithURL:url]];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSLog(@"start Loading");
    return YES;
}
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"webViewDidStartLoad");
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"webViewDidFinishLoad");

}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error
{
    NSLog(@"didFailLoadWithError==>%@",error);
}

@end

//
//  ViewController.m
//  MakePhoneCall
//
//  Created by shuzhenguo on 15-3-4.
//  Copyright (c) 2015年 shuzhenguo. All rights reserved.
//

#import "ViewController.h"
#import "QYYLgoogleLib.h"
@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)initlize{
    
    [[QYYLgoogleLib getQYYLGooglelib]initHomeViewController:self QYYLGoogleBannerViewAdUnitID:@"" interstitialAdUnitID:@"" bannerY:0 bannerX:0];
    
    
    
    
    [[QYYLgoogleLib getQYYLGooglelib]QYYLGADBannerView];


}
- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//1，这种方法，拨打完电话回不到原来的应用，会停留在通讯录里，而且是直接拨打，不弹出提示
- (IBAction)One:(id)sender {
    
    NSMutableString * str=[[NSMutableString alloc] initWithFormat:@"tel:%@",@"000000000"];
    //            NSLog(@"str======%@",str);
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];

}
//2，这种方法，打完电话后还会回到原来的程序，也会弹出提示，推荐这种

- (IBAction)Two:(id)sender {
    
    NSMutableString * str=[[NSMutableString alloc] initWithFormat:@"tel:%@",@"00000000000"];
    UIWebView * callWebview = [[UIWebView alloc] init];
    [callWebview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:str]]];
    [self.view addSubview:callWebview];

    
    
//    // 提示：不要将webView添加到self.view，如果添加会遮挡原有的视图
//    // 懒加载
//    if (_webView == nil) {
//        _webView = [[UIWebView alloc] init];
//    }
//    NSLog(@"%p", _webView);
//    
//    NSURL *url = [NSURL URLWithString:@"tel://xxxxxxx"];
//    NSURLRequest *request = [NSURLRequest requestWithURL:url];
//    
//    [_webView loadRequest:request];

    
}

//3,这种方法也会回去到原来的程序里（注意这里的telprompt），也会弹出提示
- (IBAction)three:(id)sender {
    
    [self makeAPhone];

}

- (void)makeAPhone
{
    
    
    NSMutableString * str=[[NSMutableString alloc] initWithFormat:@"telprompt://%@",@"000000000"];
    //            NSLog(@"str======%@",str);
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];

    
    
}

- (IBAction)praise:(id)sender {
    
    
    [[QYYLgoogleLib getQYYLGooglelib]QYYLGADInterstitial];

    
    
}




@end

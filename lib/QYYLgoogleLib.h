//
//  QYYLgoogleLib.h
//  QYYLgoogleLib
//
//  Created by shuzhenguo on 14-12-18.
//  Copyright (c) 2014年 shuzhenguo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface QYYLgoogleLib : NSObject
{


}

+ (QYYLgoogleLib*)getQYYLGooglelib;




-(void)initHomeViewController:(UIViewController *)ViewController QYYLGoogleBannerViewAdUnitID:(NSString *)bannerAdUnitID   interstitialAdUnitID:(NSString *)interstitialAdUnitID bannerY:(float)bannerY   bannerX:(float)bannerX;






//竖屏广告
-(void)QYYLGADBannerView;




//隐藏banner
-(void)QYYLGADBannerViewHidden;





//插页式广告
-(void)QYYLGADInterstitial;



-(void)QYYLGADInterstitialHidden;


@end

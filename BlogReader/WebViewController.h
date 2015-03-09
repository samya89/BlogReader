//
//  WebViewController.h
//  BlogReader
//
//  Created by Samia Al Rahmani on 3/3/15.
//  Copyright (c) 2015 Samia Al Rahmani. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property (strong, nonatomic)  NSURL *blogPostURL;
@property (strong, nonatomic) IBOutlet UIWebView *webView;


@end

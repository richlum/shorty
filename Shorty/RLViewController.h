//
//  RLViewController.h
//  Shorty
//
//  Created by Richard on 2014-08-03.
//  Copyright (c) 2014 lum International. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RLViewController : UIViewController


@property (weak,nonatomic) IBOutlet UITextField *urlField;
@property (weak,nonatomic) IBOutlet UIWebView *webView;
-(IBAction)loadLocation:(id) sender;

@end

//
//  RLViewController.m
//  Shorty
//
//  Created by Richard on 2014-08-03.
//  Copyright (c) 2014 lum International. All rights reserved.
//

#import "RLViewController.h"

@interface RLViewController ()

@end

@implementation RLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loadLocation : (id) sender
{
    NSString *urlText = self.urlField.text;
    
    if (![urlText hasPrefix:@"http:"] && ![urlText hasPrefix:@"https:"]) {
        if (![urlText hasPrefix:@"//"])
            urlText = [@"//" stringByAppendingString:urlText];
        urlText = [@"http:" stringByAppendingString:urlText];
    }
    NSURL *url = [NSURL URLWithString:urlText];
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
}


@end

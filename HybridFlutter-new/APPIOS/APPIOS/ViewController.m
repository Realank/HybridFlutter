//
//  ViewController.m
//  APPIOS
//
//  Created by Realank on 2019/8/29.
//  Copyright © 2019 Realank. All rights reserved.
//

#import <Flutter/Flutter.h>
#import "AppDelegate.h"
#import "ViewController.h"
#import "RLKFlutterViewController.h"
@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(handleButtonAction)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Press me" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];
}

- (void)handleButtonAction {
    FlutterEngine *flutterEngine = [(AppDelegate *)[[UIApplication sharedApplication] delegate] flutterEngine];
    RLKFlutterViewController *flutterViewController = [[RLKFlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
    NSLog(@"present VC");
    [self presentViewController:flutterViewController animated:false completion:nil];
}
@end

//
//  RLKFlutterViewController.m
//  APPIOS
//
//  Created by Realank on 2019/8/29.
//  Copyright © 2019 Realank. All rights reserved.
//

#import "RLKFlutterViewController.h"

@interface RLKFlutterViewController ()

@end

@implementation RLKFlutterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"RLKFlutterViewController viewDidLoad");
    // Do any additional setup after loading the view.
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"dismiss VC");
        [self dismissViewControllerAnimated:YES completion:nil];
    });
}

- (void)dealloc {
    NSLog(@"RLKFlutterViewController dealloc");
}

@end

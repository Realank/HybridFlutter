//
//  ViewController.m
//  HybridIOS
//
//  Created by Realank on 2018/8/20.
//  Copyright © 2018年 Realank. All rights reserved.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)goNext:(id)sender {
    FlutterViewController* flutterViewController = [[FlutterViewController alloc] initWithProject:nil nibName:nil bundle:nil];
//    FlutterBasicMessageChannel* messageChannel = [FlutterBasicMessageChannel messageChannelWithName:@"channel"
//                                                        binaryMessenger:flutterViewController
//                                                                  codec:[FlutterStandardMessageCodec sharedInstance]];
//    __weak __typeof(self) weakSelf = self;
//    [messageChannel setMessageHandler:^(id message, FlutterReply reply) {
//        // Any message on this channel pops the Flutter view.
//        [[weakSelf navigationController] popViewControllerAnimated:YES];
//        reply(@"");
//    }];
    NSAssert([self navigationController], @"Must have a NaviationController");
    [[self navigationController]  pushViewController:flutterViewController animated:YES];
}

@end

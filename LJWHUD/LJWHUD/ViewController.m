//
//  ViewController.m
//  LJWHUD
//
//  Created by ljw on 15/5/25.
//  Copyright (c) 2015年 ljw. All rights reserved.
//

#import "ViewController.h"
#import "LJWHUDManager.h"
#import "UIView+LJWHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)didClickButton:(id)sender {
    
//    [[LJWHUDManager defaultManager] showMessageViewWithMessage:@"hello world！" inView:self.view completionBlock:^{
//        NSLog(@"show in view complete");
//    }];
    
    [self.view showMessageViewWithMessage:@"hello world!" completionBlock:^{
       
        NSLog(@"show in self.view complete!");
        
    }];

}
- (IBAction)didClickShowMessageViewInKeyWindow:(id)sender {
    
//    [[LJWHUDManager defaultManager] showMessageViewInKeyWindowMessage:@"hei baby!" completionBlock:^{
//        NSLog(@"show in keyWindow complete");
//    }];
    
    [[UIApplication sharedApplication].keyWindow showMessageViewWithMessage:@"this is show in keyWindow!" completionBlock:^{
       
        NSLog(@"show in keyWindow complete!");
        
    }];
    
}
- (IBAction)didClickShowWaitingViewInView:(id)sender {
    
//    [[LJWHUDManager defaultManager] showWaitingViewInView:self.view];
    
    [self.view showWaitingView];
    
}

- (IBAction)didClickDismissWaitingView:(id)sender {
    
//    [[LJWHUDManager defaultManager] dismissWaitingView];
    
    [self.view dismissWaitingView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

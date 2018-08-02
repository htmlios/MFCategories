//
//  ViewController.m
//  MFCategories-Demo
//
//  Created by XYZ on 2018/8/2.
//  Copyright © 2018年 XYZOrganization. All rights reserved.
//

#import "ViewController.h"
#import "MFCategories.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dict = @{@"1" : @"1234"};
    NSUInteger tempU = [dict mf_uintegerForKey:@"1"];
    NSLog(@"tempU:%@", @(tempU));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

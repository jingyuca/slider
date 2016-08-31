//
//  RightViewController.m
//  TestSlider
//
//  Created by StevenCao on 16/8/30.
//  Copyright © 2016年 hongshu. All rights reserved.
//

#import "RightViewController.h"
#import "AppDelegate.h"
@interface RightViewController ()

@end

@implementation RightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    UIButton *shelfBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    shelfBtn.frame = CGRectMake(100, 200, 30, 30);
    shelfBtn.backgroundColor = [UIColor redColor];
    [shelfBtn addTarget:self action:@selector(shelfClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:shelfBtn];
    
    self.title = @"书城";

}

- (void)shelfClick:(UIButton *)btn{
    AppDelegate *appdelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [appdelegate.side dismissRigthViewWithAnimation:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  BookShelfViewController.m
//  TestSlider
//
//  Created by StevenCao on 16/8/29.
//  Copyright © 2016年 hongshu. All rights reserved.
//

#import "BookShelfViewController.h"
#import "AppDelegate.h"

@interface BookShelfViewController ()

@end

@implementation BookShelfViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"书架";
    self.view.backgroundColor = [UIColor cyanColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 30, 30);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftBarItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.leftBarButtonItem = leftBarItem;
    
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rightBtn.frame = CGRectMake(0, 0, 30, 30);
    rightBtn.backgroundColor = [UIColor redColor];
    [rightBtn addTarget:self action:@selector(rightClick:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightBarItem = [[UIBarButtonItem alloc]initWithCustomView:rightBtn];
    self.navigationItem.rightBarButtonItem = rightBarItem;
    
}
-(void)click:(UIButton *)btn{
    
    AppDelegate *appdelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    if (appdelegate.side.CenterViewController.view.frame.origin.x > 0 ) {
        [appdelegate.side dismissSideWithAnimation:YES];
    } else {
         [appdelegate.side showSideWithAnimation:YES];
    }
}
- (void)rightClick:(UIButton *)btn{
    AppDelegate *appdelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    if (appdelegate.side.CenterViewController.view.frame.origin.x < 0 ) {
        [appdelegate.side dismissRigthViewWithAnimation:YES];
    } else {
        [appdelegate.side showRightViewWithAnimation:YES];
    }
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

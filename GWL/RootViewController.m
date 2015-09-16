//
//  RootViewController.m
//  GWL
//
//  Created by XXT on 15/9/16.
//  Copyright (c) 2015年 XXT. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor =[UIColor whiteColor];
    UIView *tabBarView=[[UIView alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height - 30, self.view.bounds.size.width, 30)];
    tabBarView.backgroundColor =[UIColor whiteColor];
    [self.view addSubview:tabBarView];
    UIButton *findButton =[UIButton buttonWithType:UIButtonTypeCustom];
    findButton.frame =CGRectMake(0, 0, 80, 30);
    findButton.backgroundColor =[UIColor redColor];
    [tabBarView addSubview:findButton];
    UIButton *buyButton =[UIButton buttonWithType:UIButtonTypeCustom];
    buyButton.frame =CGRectMake(50, 0, 80, 30);
    buyButton.backgroundColor =[UIColor grayColor];
    [tabBarView addSubview:buyButton];
    
    UIButton *activityButton =[UIButton buttonWithType:UIButtonTypeCustom];
    activityButton.frame =CGRectMake(100, 0, 80, 30);
    activityButton.backgroundColor =[UIColor greenColor];
    [tabBarView addSubview:activityButton];
    UIButton *movieButton =[UIButton buttonWithType:UIButtonTypeCustom];
    movieButton.frame =CGRectMake(150, 0, 80, 30);
    movieButton.backgroundColor =[UIColor yellowColor];
    [tabBarView addSubview:movieButton];
    UIButton *userButton =[UIButton buttonWithType:UIButtonTypeCustom];
    userButton.frame =CGRectMake(325, 0, 80, 30);
    userButton.backgroundColor =[UIColor blueColor];
    [tabBarView addSubview:userButton];
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

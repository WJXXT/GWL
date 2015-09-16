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
    UIView *tabBarView=[[UIView alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height - 44, self.view.bounds.size.width, 44)];
    tabBarView.backgroundColor =[UIColor whiteColor];
    [self.view addSubview:tabBarView];
    UIButton *findButton =[UIButton buttonWithType:UIButtonTypeCustom];
    findButton.tag =101;
    findButton.frame =CGRectMake(0, 0, 100, 44);
    findButton.backgroundColor =[UIColor redColor];
    [tabBarView addSubview:findButton];
    [findButton addTarget:self action:@selector(btAction:) forControlEvents:UIControlEventTouchUpInside];
    UIButton *buyButton =[UIButton buttonWithType:UIButtonTypeCustom];
    buyButton.tag =102;
    buyButton.frame =CGRectMake(100, 0, 100, 44);
    buyButton.backgroundColor =[UIColor grayColor];
    [tabBarView addSubview:buyButton];
    [buyButton addTarget:self action:@selector(btAction:) forControlEvents:UIControlEventTouchUpInside];
    UIButton *activityButton =[UIButton buttonWithType:UIButtonTypeCustom];
    activityButton.tag =103;
    activityButton.frame =CGRectMake(150, 0, 100, 44);
    activityButton.backgroundColor =[UIColor greenColor];
    [tabBarView addSubview:activityButton];
    [activityButton addTarget:self action:@selector(btAction:) forControlEvents:UIControlEventTouchUpInside];
    UIButton *movieButton =[UIButton buttonWithType:UIButtonTypeCustom];
    movieButton.tag = 104;
    movieButton.frame =CGRectMake(200, 0, 100, 44);
    movieButton.backgroundColor =[UIColor yellowColor];
    [tabBarView addSubview:movieButton];
    [movieButton addTarget:self action:@selector(btAction:) forControlEvents:UIControlEventTouchUpInside];
    UIButton *userButton =[UIButton buttonWithType:UIButtonTypeCustom];
    userButton.tag =106;
    userButton.frame =CGRectMake(325, 0, 50, 44);
    userButton.backgroundColor =[UIColor blueColor];
    [tabBarView addSubview:userButton];
        [userButton addTarget:self action:@selector(btAction:) forControlEvents:UIControlEventTouchUpInside];
    UIView *dang =[[UIView alloc]initWithFrame:CGRectMake(250, 0, 50, 44)];
    dang.tag = 105;
    dang.backgroundColor =[UIColor whiteColor];
    [tabBarView addSubview:dang];
    
}
-(void)btAction:(UIButton *)button{
    NSInteger tag =button.tag;
    
    if (tag ==106) {
        tag--;
        [UIView animateWithDuration:0.5 animations:^{
            [self.view viewWithTag:tag].frame =CGRectMake(200, 0, 100, 44);
        }];
        while (tag>102) {
            tag--;
            [UIView animateWithDuration:0.5 animations:^{
                [self.view viewWithTag:tag].frame =CGRectMake((tag -101)*50, 0, 100, 44) ;
            }];
        }
    }
   else if ([self.view viewWithTag:tag].frame.origin.x !=(tag -101)*50) {
        [UIView animateWithDuration:0.5 animations:^{
            [self.view viewWithTag:tag].frame =CGRectMake((tag -101)*50, 0, 100, 44) ;
        }];
        while (tag>102) {
            tag--;
            [UIView animateWithDuration:0.5 animations:^{
                [self.view viewWithTag:tag].frame =CGRectMake((tag -101)*50, 0, 100, 44) ;
            }];
        }
    }else{
        while (tag<105) {
            tag++;
            [UIView animateWithDuration:0.5 animations:^{
                [self.view viewWithTag:tag].frame =CGRectMake((tag -100)*50, 0, 100, 44) ;
            }];
        }
        if (tag == 105) {
            [UIView animateWithDuration:0.5 animations:^{
                [self.view viewWithTag:tag].frame =CGRectMake((tag -100)*50, 0, 50, 44) ;
            }];
        }
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

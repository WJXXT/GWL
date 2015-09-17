//
//  RootViewController.m
//  GWL
//
//  Created by XXT on 15/9/16.
//  Copyright (c) 2015年 XXT. All rights reserved.
//

#import "RootViewController.h"
#import "TbCustomButton.h"
@interface RootViewController ()
@property(nonatomic,assign)NSInteger tag;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor =[UIColor whiteColor];
    UIView *tabBarView=[[UIView alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height - 44, self.view.bounds.size.width, 44)];
    tabBarView.backgroundColor =[UIColor whiteColor];
    [self.view addSubview:tabBarView];
    
    TbCustomButton *findButton =[[TbCustomButton alloc] initWithcreateImageNormal:@"camera_overturn" ImageSelect:@"camera_overturn_highlighted" name:@"hehe" index:0];
    [findButton addTarget:self action:@selector(btAction:) forControlEvents:UIControlEventTouchUpInside];
    [tabBarView addSubview:findButton];
    
    TbCustomButton *buyButton =[[TbCustomButton alloc] initWithcreateImageNormal:@"camera_overturn" ImageSelect:@"camera_overturn_highlighted" name:@"hehe" index:1];
    [tabBarView addSubview:buyButton];
    NSLog(@"%ld",buyButton.tag);
    [buyButton addTarget:self action:@selector(btAction:) forControlEvents:UIControlEventTouchUpInside];
    TbCustomButton *activityButton =[[TbCustomButton alloc] initWithcreateImageNormal:@"camera_overturn" ImageSelect:@"camera_overturn_highlighted" name:@"hehe" index:2];
    [tabBarView addSubview:activityButton];
    [activityButton addTarget:self action:@selector(btAction:) forControlEvents:UIControlEventTouchUpInside];
    TbCustomButton *movieButton =[[TbCustomButton alloc] initWithcreateImageNormal:@"camera_overturn" ImageSelect:@"camera_overturn_highlighted" name:@"hehe" index:3];
    [tabBarView addSubview:movieButton];
    [movieButton addTarget:self action:@selector(btAction:) forControlEvents:UIControlEventTouchUpInside];

    TbCustomButton *whiteButton =[[TbCustomButton alloc] initWithcreateImageNormal:@" " ImageSelect:@" " name:@"" index:4];
    [tabBarView addSubview:whiteButton];
    UIButton *userButton =[UIButton buttonWithType:UIButtonTypeCustom];
    userButton.tag =106;
    userButton.frame =CGRectMake(325, 0, 50, 44);
    [userButton setImage:[UIImage imageNamed:@"camera_overturn"] forState:UIControlStateNormal];
    [userButton setImage:[UIImage imageNamed:@"camera_overturn_highlighted"] forState:UIControlStateSelected];
    [tabBarView addSubview:userButton];
    [userButton addTarget:self action:@selector(btAction:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)btAction:(UIButton *)button{
    if (_tag) {
        ((UIButton *)[self.view viewWithTag:_tag]).selected =NO;
    }
    _tag =button.tag;
    NSInteger tag =button.tag;

    ((UIButton *)[self.view viewWithTag:tag]).selected =YES;
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

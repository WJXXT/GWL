//
//  TbCustomButton.m
//  GWL
//
//  Created by XXT on 15/9/17.
//  Copyright (c) 2015年 XXT. All rights reserved.
//

#import "TbCustomButton.h"

@implementation TbCustomButton
-(id)initWithcreateImageNormal:(NSString *)normalImg ImageSelect:(NSString *)selectImg name:(NSString *)name index:(NSInteger)index{
    self =[super init];
    if (self) {
        self =[UIButton buttonWithType:UIButtonTypeCustom];
        //    TbCustomButton *button =[[UIButton alloc]init]
        self.frame =CGRectMake(kButtonWidht/2*index, 0, kButtonWidht, kButtonHeight);
        self.backgroundColor =[UIColor whiteColor];
        [self setImage:[UIImage imageNamed:normalImg] forState:UIControlStateNormal];
        [self setImage:[UIImage imageNamed:selectImg] forState:UIControlStateSelected];
        [self setTitle:name forState:UIControlStateNormal];
        self.tag =101+index;
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor orangeColor] forState:UIControlStateSelected];
        self.imageView.contentMode = UIViewContentModeCenter; // 让图片在按钮内居中
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}
#pragma mark 设置Button内部的image的范围
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
//    [super imageRectForContentRect:contentRect];
    
     CGFloat imageW = contentRect.size.width * 0.4;
     CGFloat imageH = contentRect.size.height;
    NSLog(@"dsa");
    return CGRectMake(0, 0, imageW, imageH);
}
#pragma mark 设置Button内部的title的范围
- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
//    [super titleRectForContentRect:contentRect];
    CGFloat titleX = contentRect.size.width *0.4;
    CGFloat titleW = contentRect.size.width *0.5;
    CGFloat titleH = contentRect.size.height;
    return CGRectMake(titleX, 0, titleW, titleH);
}
@end

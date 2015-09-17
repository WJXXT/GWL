//
//  TbCustomButton.h
//  GWL
//
//  Created by XXT on 15/9/17.
//  Copyright (c) 2015年 XXT. All rights reserved.
//
#define kButtonWidht 100
#define kButtonHeight 44
#import <UIKit/UIKit.h>

@interface TbCustomButton : UIButton
-(id)initWithcreateImageNormal:(NSString *)normalImg
                   ImageSelect:(NSString *)selectImg
                          name:(NSString *)name
                         index:(NSInteger)index;
@end

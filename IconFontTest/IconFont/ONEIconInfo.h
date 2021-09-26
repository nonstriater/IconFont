//
//  ONEIconInfo.h
//  IconFontTest
//
//  Created by ranwenjie on 16/10/26.
//  Copyright © 2016年 ranwenjie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ONEIconInfo : NSObject

@property(nonatomic,strong) NSString *text;//编码
@property(nonatomic,assign) CGFloat size;//icon font 大小
@property(nonatomic,strong) UIColor *color;//着色
@property(nonatomic,strong) UIColor *backgroundColor;//背景色
@property(nonatomic,assign) UIEdgeInsets imageInsets;//图片中font与边界的inset信息
@property(nonatomic,strong) NSString *fontName;

@end

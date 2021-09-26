//
//  ONEFontImage.m
//  IconFontTest
//
//  Created by ranwenjie on 16/10/26.
//  Copyright © 2016年 ranwenjie. All rights reserved.
//

#import "ONEFontImage.h"
#import "ONEIconInfo.h"
#import "UIImage+IconFont.h"

@implementation ONEFontImage

+ (NSString *)fontName{
    return nil;
}

+ (NSDictionary *)iconMapper{
    return nil;
}

//icon font unicode编码
+ (NSString *)unicodeWithName:(NSString *)name{
    if (!name) {
        return nil;
    }
    NSDictionary *mapper = [self iconMapper];
    NSString *code = mapper[name];
    return code?:name;
}

+ (UIImage *)imageNamed:(NSString *)name{
    return [self imageNamed:name fontSize:14.f];
}

+ (UIImage *)imageNamed:(NSString *)name fontSize:(CGFloat)size{
    return [self imageNamed:name fontSize:size color:[UIColor blackColor]];
}

+ (UIImage *)imageNamed:(NSString *)name fontSize:(CGFloat)size color:(UIColor *)color{
    return [self imageNamed:name fontSize:size color:color insets:UIEdgeInsetsZero];
}

+ (UIImage *)imageNamed:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color insets:(UIEdgeInsets)insets{
    return [self imageNamed:name fontSize:size color:color insets:insets backgroundColor:nil];
}

+ (UIImage *)imageNamed:(NSString*)name
               fontSize:(CGFloat)size
                  color:(UIColor*)color
                  insets:(UIEdgeInsets)insets
        backgroundColor:(UIColor*)backgroundColor{

    //未来这里可以扩展添加缓存系统
    
    ONEIconInfo *info = [[ONEIconInfo alloc] init];
    info.text = [self unicodeWithName:name];
    info.size = size;
    info.color = color;
    info.imageInsets = insets;
    info.backgroundColor = backgroundColor;
    info.fontName = [self fontName];
    
    return [UIImage one_imageWithFontInfo:info];
}

@end

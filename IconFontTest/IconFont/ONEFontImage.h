//
//  ONEFontImage.h
//  IconFontTest
//
//  Created by ranwenjie on 16/10/26.
//  Copyright © 2016年 ranwenjie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**提供给外部使用IconFont image的API,需要继承
 */
@interface ONEFontImage : NSObject

+ (UIImage *)imageNamed:(NSString *)name;

+ (UIImage *)imageNamed:(NSString *)name fontSize:(CGFloat)size;

+ (UIImage *)imageNamed:(NSString *)name fontSize:(CGFloat)size color:(UIColor *)color;

+ (UIImage *)imageNamed:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color insets:(UIEdgeInsets)insets;

+ (UIImage *)imageNamed:(NSString*)name
                 fontSize:(CGFloat)size
                    color:(UIColor*)color
                    insets:(UIEdgeInsets)insets
        backgroundColor:(UIColor*)backgroundColor;

//子类重写
+ (NSString *)fontName;

//子类重写
+ (NSDictionary *)iconMapper;

@end

//
//  ONEIconFont.m
//  IconFontTest
//
//  Created by ranwenjie on 16/10/26.
//  Copyright © 2016年 ranwenjie. All rights reserved.
//

#import "ONEIconFont.h"
#import <CoreText/CoreText.h>

@implementation ONEIconFont

+ (UIFont *)fontWithSize:(CGFloat)size fontName:(NSString *)name{
    if(!name){
        NSLog(@"ICONFONT NAME IS EMPTY");
        return nil;
    }
    UIFont *font = [UIFont fontWithName:name size:size];
    if (!font) {
        NSURL *fontURL = [[NSBundle mainBundle] URLForResource:name withExtension:@"ttf"];
        [self registerFontWithURL:fontURL];
        font = [UIFont fontWithName:name size:size];
    }
    return font;
}

+ (void)registerFontWithURL:(NSURL *)url{
    if (!url || ![[NSFileManager defaultManager] fileExistsAtPath:[url path]]) {
        NSLog(@"ICONFONT PATH NOT EXIST: %@",[url path]);
        return;
    }
    
    CGDataProviderRef dataProvider = CGDataProviderCreateWithURL((__bridge CFURLRef) url);
    CGFontRef fontRef = CGFontCreateWithDataProvider(dataProvider);
    CTFontManagerRegisterGraphicsFont(fontRef,nil);
    CGDataProviderRelease(dataProvider);
    CGFontRelease(fontRef);
}

@end

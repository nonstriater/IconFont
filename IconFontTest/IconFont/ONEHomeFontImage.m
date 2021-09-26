//
//  ONEHomeFontImage.m
//  IconFontTest
//
//  Created by ranwenjie on 16/10/26.
//  Copyright © 2016年 ranwenjie. All rights reserved.
//

#import "ONEHomeFontImage.h"

@implementation ONEHomeFontImage

+ (NSString *)fontName{
    return @"icomoon";
}

+ (NSDictionary *)iconMapper{
    return @{
             @"one_tabbar_more":@"\U0000e900",
             @"one_operationform_arrow":@"\U0000e901",
             @"one_operationform_tabbar_bg":@"\U0000e904",
             @"one_topbar_arrow":@"\U0000e902",
             @"one_topbar_menu":@"\U0000e903",
             @"one_topbar_message":@"\U0000e905",
             @"one_topbar_logo":@"\U0000e906"
             };
}

@end

//
//  LBPIconFont.h
//  IconFont_Demo
//
//  Created by geek on 2017/5/28.
//  Copyright © 2017年 Liubp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LBPFontInfo.h"

#define LBPIconFontmake(text,size,color) [[LBPFontInfo alloc] initWithText:text withSize:size andColor:color]

@interface LBPIconFont : NSObject

/**
 * 类方法 设置字体图标的大小
 *
 *  @param size 图标对应的unicode码
 *
 *  @return UIFont
 */
+ (UIFont *)fontWithSize: (CGFloat)size;


+ (void)setFontName:(NSString *)fontName;


@end

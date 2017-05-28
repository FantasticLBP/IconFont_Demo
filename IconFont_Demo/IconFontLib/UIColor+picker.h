//
//  UIColor+picker.h
//  IconFont_Demo
//
//  Created by geek on 2017/5/28.
//  Copyright © 2017年 Liubp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (picker)

/**
 *  颜色转换：iOS中（以#开头）十六进制的颜色转换为UIColor(RGB)
 *
 *  @param color 颜色的十六进制值
 *
 *  @return UIColor
 */

+ (UIColor *) colorWithHexString: (NSString *)color;

@end

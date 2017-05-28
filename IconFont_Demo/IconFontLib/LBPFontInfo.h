//
//  LBPFontInfo.h
//  IconFont_Demo
//
//  Created by geek on 2017/5/28.
//  Copyright © 2017年 Liubp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LBPFontInfo : NSObject

@property (nonatomic, strong) NSString *text;            /**<图标对应的unicode码*/

@property (nonatomic, assign) NSInteger size;            /**<尺寸大小*/

@property (nonatomic, strong) UIColor *color;           /**<颜色信息*/

/**
 * 对象方法（实例方法）返回一个IconFont信息对象
 *
 *  @param text 图标对应的unicode码
 *
 *  @param size 尺寸大小
 *
 *  @param color 颜色信息
 *
 *  @return LBPFontInfo对象
 */

-(instancetype)initWithText:(NSString *)text withSize:(NSInteger)size andColor:(NSString *)color;


/**
 * 类方法返回一个IconFont信息对象
 *
 *  @param text 图标对应的unicode码
 *
 *  @param size 尺寸大小
 *
 *  @param color 颜色信息
 *
 *  @return LBPFontInfo对象
 */
+(instancetype)LBPFontInfoWithText:(NSString *)text withSize:(NSInteger)size andColor:(NSString *)color;

@end


//
//  LBPFontInfo.m
//  IconFont_Demo
//
//  Created by geek on 2017/5/28.
//  Copyright © 2017年 Liubp. All rights reserved.
//

#import "LBPFontInfo.h"
#import "UIColor+picker.h"

@implementation LBPFontInfo

-(instancetype)initWithText:(NSString *)text withSize:(NSInteger)size andColor:(NSString *)color{
    if (self = [super init]) {
        self.text = text;
        self.color = [UIColor colorWithHexString:color];
        self.size = size;
    }
    return self;
}


+(instancetype)LBPFontInfoWithText:(NSString *)text withSize:(NSInteger)size andColor:(NSString *)color{
    return [[LBPFontInfo alloc] initWithText:text withSize:size andColor:color];
}


@end

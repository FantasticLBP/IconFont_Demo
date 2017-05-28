

//
//  LBPIconFont.m
//  IconFont_Demo
//
//  Created by geek on 2017/5/28.
//  Copyright © 2017年 Liubp. All rights reserved.
//

#import "LBPIconFont.h"
#import <CoreText/CoreText.h>

static NSString *_fontName;

@implementation LBPIconFont

+(void)registerFontWithFontUrl:(NSURL *)url{
    NSAssert([[NSFileManager defaultManager] fileExistsAtPath:[url path]], @"Font file doesn't exist");
    CGDataProviderRef fontDataProvider = CGDataProviderCreateWithURL((__bridge CFURLRef)url);
    CGFontRef newFont = CGFontCreateWithDataProvider(fontDataProvider);
    CGDataProviderRelease(fontDataProvider);
    CTFontManagerRegisterGraphicsFont(newFont, nil);
     CGFontRelease(newFont);
    
}

+ (UIFont *)fontWithSize: (CGFloat)size{
    UIFont *font = [UIFont fontWithName:[self fontName] size:size];
    if (font == nil) {
        NSURL *fontFileUrl = [[NSBundle mainBundle] URLForResource:[self fontName] withExtension:@"ttf"];
        [self registerFontWithFontUrl:fontFileUrl];
        font = [UIFont fontWithName:[self fontName] size:size];
        NSAssert(font, @"UIFont object should not be nil, check if the font file is added to the application bundle and you're using the correct font name.");
    }
    return font;
}


+ (void)setFontName:(NSString *)fontName{
    _fontName = fontName;
}


+(NSString *)fontName{
    return _fontName;
}

@end

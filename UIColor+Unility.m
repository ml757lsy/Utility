//
//  UIColor+Unility.m
//  MyApp
//
//  Created by MacOS on 2/7/16.
//  Copyright © 2016 com.ml.app. All rights reserved.
//

#import "UIColor+Unility.h"

@implementation UIColor (Unility)

+ (UIColor *)randomColor{
    return [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random( )% 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1];
}

+ (NSInteger)getColorHexWithColor:(UIColor *)color{
    CGColorRef colorRef = [color CGColor];
    long numComponents = CGColorGetNumberOfComponents(colorRef);
    
    CGFloat R;
    CGFloat G;
    CGFloat B;
    
    if (numComponents == 4)
    {
        const CGFloat *components = CGColorGetComponents(colorRef);
        R = components[0];
        G = components[1];
        B = components[2];
    }else if (numComponents == 2){
        const CGFloat *components = CGColorGetComponents(colorRef);
        R = components[0];
        G = components[0];
        B = components[0];
    }
    int hex = R * 255 * 255 + G * 255 + B;
    
    return hex;
}

+ (UIColor *)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alpha{
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16)) / 255.0
                           green:((float)((hexValue & 0xFF00) >> 8)) / 255.0
                            blue:((float)(hexValue & 0xFF)) / 255.0
                           alpha:alpha];
}

+ (UIColor *)colorWithHexString:(NSString *)hexStr alpha:(CGFloat)alpha{

    if (hexStr.length == 8) {
        NSString *redStr = [hexStr substringWithRange:NSMakeRange(2, 2)];
        NSString *greenStr = [hexStr substringWithRange:NSMakeRange(4, 2)];
        NSString *blueStr = [hexStr substringWithRange:NSMakeRange(6, 2)];
        return [UIColor colorWithRed:[redStr integerValueOfHex]/255.0 green:[greenStr integerValueOfHex]/255.0 blue:[blueStr integerValueOfHex]/255.0 alpha:1];
    }else{
        return [UIColor whiteColor];
    }
}


+ (UIColor *)lightColorWithColor:(UIColor *)color{
    NSInteger hex = [UIColor getColorHexWithColor:color];
    int r = ((hex & 0xFF0000) >> 16);
    int g = ((hex & 0xFF00) >> 8);
    int b = (hex & 0xFF);
    
    CGFloat x = 0;
    if ((1 + r / 800) * r >= 255) {
        CGFloat xx = (255 - r) / (r / 800 * r);
        x = xx;
    }
    if ((1 + g / 800) * g >= 255) {
        CGFloat xx = (255 - g) / (g / 800 * r);
        x = xx < x ? xx : x;
    }
    if ((1 + b / 800) * b >= 255) {
        CGFloat xx = (255 - b) / (b / 800 * r);
        x = xx < x ? xx : x;
    }
    
    
    return [UIColor colorWithRed:r * (1 + r / 800  * x) / 255.0 green:g * (1 + g / 800 * x) / 255.0 blue:b * (1 + b / 800 * x) / 255.0 alpha:1];
}

+ (UIColor *)deepColorWithColor:(UIColor *)color{
    NSInteger hex = [UIColor getColorHexWithColor:color];
    int r = ((hex & 0xFF0000) >> 16);
    int g = ((hex & 0xFF00) >> 8);
    int b = (hex & 0xFF);
    
    CGFloat x = 0;
    if ((1 + r / 800) * r <= 0) {
        CGFloat xx = (r - 0) / ((r / 800) * r);
        x = xx;
    }
    if ((1+g/800)*g <= 0) {
        CGFloat xx = (g - 0) / ((g / 800) * g);
        x = xx < x ? xx : x;
    }
    if ((1+b/800)*b <= 0) {
        CGFloat xx = (b - 0) / ((b / 800) * b);
        x = xx < x ? xx : x;
    }
    
    
    return [UIColor colorWithRed:r * (1 - r / 800 * x) / 255.0 green:g * (1 -g/800*x) / 255.0 blue:b * (1 - b / 800 * x) / 255.0 alpha:1];
}

+ (UIColor *)darkColorWithColor:(UIColor *)color{
    NSInteger hex = [UIColor getColorHexWithColor:color];
    int r = ((hex & 0xFF0000) >> 16);
    int g = ((hex & 0xFF00) >> 8);
    int b = (hex & 0xFF);
    
    CGFloat x = 0;
    if ((1+r/400)*r <= 0) {
        CGFloat xx = (r - 0) / ((r / 400) * r);
        x = xx;
    }
    if ((1+g/400)*g <= 0) {
        CGFloat xx = (g - 0) / ((g / 400) * g);
        x = xx < x ? xx : x;
    }
    if ((1+b/400)*b <= 0) {
        CGFloat xx = (b - 0)/((b / 400) * b);
        x = xx < x ? xx : x;
    }
    
    
    return [UIColor colorWithRed:r * (1 - r / 400 * x) / 255.0 green:g * (1 - g / 400 * x) / 255.0 blue:b * (1 - b / 400 * x) / 255.0 alpha:1];
}

#pragma mark - 自定义颜色

+ (UIColor *)grapefruitColor{
    return [UIColor colorWithHex:0xED5556 alpha:1];
}

+ (UIColor *)grapefruitDeepColor{
    return [UIColor colorWithHex:0xDA4453 alpha:1];
}

+ (UIColor *)bittersweetColor{
    return [UIColor colorWithHex:0xFC6E51 alpha:1];
}

+ (UIColor *)bittersweetDeepColor{
    return [UIColor colorWithHex:0xE9573F alpha:1];
}

+ (UIColor *)sunflowerColor{
    return [UIColor colorWithHex:0xffce54 alpha:1];
}

+ (UIColor *)sunflowerDeepColor{
    return [UIColor colorWithHex:0xf6bb42 alpha:1];
}

+ (UIColor *)grassColor{
    return [UIColor colorWithHex:0xa0d468 alpha:1];
}

+ (UIColor *)grassDeepColor{
    return [UIColor colorWithHex:0x8cc152 alpha:1];
}

+ (UIColor *)mintColor{
    return [UIColor colorWithHex:0x48cfad alpha:1];
}

+ (UIColor *)mintDeepColor{
    return [UIColor colorWithHex:0x37bc98 alpha:1];
}
@end

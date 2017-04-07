//
//  UIColor+Unility.h
//  MyApp
//
//  Created by MacOS on 2/7/16.
//  Copyright © 2016 com.ml.app. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSString+Utility.h"

@interface UIColor (Unility)

/**
 *  随机
 *
 *  @return Color
 */
+ (UIColor *)randomColor;
/**
 *  浅色
 *
 *  @param color originColor
 *
 *  @return lightColor
 */
+ (UIColor *)lightColorWithColor:(UIColor *)color;
/**
 *  深色
 *
 *  @param color originColor
 *
 *  @return deepColor
 */
+ (UIColor *)deepColorWithColor:(UIColor *)color;
/**
 *  暗色
 *
 *  @param color originColor
 *
 *  @return darkColor
 */
+ (UIColor *)darkColorWithColor:(UIColor *)color;
/**
 *  获取颜色数值
 *
 *  @param color color
 *
 *  @return 数值
 */
+ (NSInteger)getColorHexWithColor:(UIColor *)color;

/**
 *  获取颜色
 *
 *  @param hexValue 十六进制
 *  @param alpha    透明度
 *
 *  @return color
 */
+ (UIColor *)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alpha;

/**
 *  获取颜色
 *
 *  @param hexStr 十六进制字符串
 *  @param alpha    透明度
 *
 *  @return color
 */
+ (UIColor *)colorWithHexString:(NSString *)hexStr alpha:(CGFloat)alpha;


#pragma mark - 自定义颜色
/**
 *  葡萄柚
 *
 *  @return #ED5565
 */
+ (UIColor *)grapefruitColor;
/**
 *  深色葡萄柚
 *
 *  @return #DA4453
 */
+ (UIColor *)grapefruitDeepColor;

+ (UIColor *)bittersweetColor;
+ (UIColor *)bittersweetDeepColor;

+ (UIColor *)sunflowerColor;
+ (UIColor *)sunflowerDeepColor;

+ (UIColor *)grassColor;
+ (UIColor *)grassDeepColor;

+ (UIColor *)mintColor;
+ (UIColor *)mintDeepColor;

+ (UIColor *)aquaColor;
+ (UIColor *)auqaDeepColor;

+ (UIColor *)bluejeansColor;
+ (UIColor *)bluejeansDeepColor;

+ (UIColor *)lavanderColor;
+ (UIColor *)lavanderDeepColor;

+ (UIColor *)pinkroseColor;
+ (UIColor *)pinkroseDeepColor;


@end

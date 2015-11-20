//
//  UIImage+JJImage.m
//  UIBezierPath_Use
//
//  Created by starnet on 11/20/15.
//  Copyright © 2015 JJ. All rights reserved.
//

#import "UIImage+JJImage.h"

@implementation UIImage (JJImage)

+ (instancetype)CreateJJBladeImage
{
    UIImage *blade;
    UIGraphicsBeginImageContextWithOptions((CGSize){300,300}, NO, [[UIScreen mainScreen] scale]);
    //创建path
    UIBezierPath*    aPath = [UIBezierPath bezierPath];
    
    [aPath moveToPoint:CGPointMake(0, 0)];
    [aPath addCurveToPoint:CGPointMake(300, 300) controlPoint1:CGPointMake(114.6, 185.4) controlPoint2:CGPointMake(185.4, 114.6)];
    [aPath closePath];
    //设置填充颜色
    [[UIColor whiteColor] setFill];
    //设置描边颜色
    [[UIColor blackColor] setStroke];
    // 设置描边宽度（为了让描边看上去更清楚）
    [aPath setLineWidth:1.0];
    [aPath stroke];
    [aPath fill];
    
    UIBezierPath *aPath2 = [UIBezierPath bezierPath];
    [aPath2 moveToPoint:CGPointMake(0, 0)];
    [aPath2 addCurveToPoint:CGPointMake(300, 300) controlPoint1:CGPointMake(185.4, 114.6) controlPoint2:CGPointMake(114.6, 185.4)];
    [aPath2 closePath];
    [[UIColor blackColor] setStroke];
    [[UIColor lightGrayColor] setFill];
    [aPath2 setLineWidth:1.0];
    [aPath2 stroke];
    [aPath2 fill];
    
    blade = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return blade;
}

+ (instancetype)CreateJJTaiJiTu
{
    UIImage *taiJiTu;
    UIGraphicsBeginImageContextWithOptions((CGSize){300,300}, NO, [[UIScreen mainScreen] scale]);
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path addArcWithCenter:CGPointMake(150, 150) radius:145.0 startAngle:-M_PI_2 endAngle:M_PI_2 clockwise:YES];
    [path setLineWidth:0.1];
    [[UIColor blackColor] setStroke];
    [[UIColor whiteColor] setFill];
    [path fill];
    
    UIBezierPath *path2 = [UIBezierPath bezierPath];
    [path2 addArcWithCenter:CGPointMake(150, 150) radius:145.0 startAngle:M_PI_2 endAngle:M_PI_2*3 clockwise:YES];
    [path2 addArcWithCenter:CGPointMake(150, 77.5) radius:72.5 startAngle:-M_PI_2 endAngle:M_PI_2 clockwise:YES];
    [[UIColor whiteColor] setStroke];
    [[UIColor blackColor] setFill];
    [path2 fill];
    
    UIBezierPath *path3 = [UIBezierPath bezierPath];
    [path3 addArcWithCenter:CGPointMake(150, 222.5) radius:72.5 startAngle:M_PI_2 endAngle:M_PI_2*3 clockwise:YES];
    [[UIColor blackColor] setStroke];
    [[UIColor whiteColor] setFill];
    [path3 fill];
    
    UIBezierPath *path4 = [UIBezierPath bezierPath];
    [path4 addArcWithCenter:CGPointMake(150, 77.5) radius:18.125 startAngle:0 endAngle:M_PI*2 clockwise:YES];
    [[UIColor whiteColor] setFill];
    [path4 fill];
    
    UIBezierPath *path5 = [UIBezierPath bezierPath];
    [path5 addArcWithCenter:CGPointMake(150, 222.5) radius:18.125 startAngle:0 endAngle:M_PI*2 clockwise:YES];
    [[UIColor blackColor] setFill];
    [path5 fill];
    
    taiJiTu = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return taiJiTu;
}

@end

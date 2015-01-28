//
//  JHGlowView.m
//  JHGlowView
//
//  Created by Jungho Bang on 2015. 1. 23..
//  Copyright (c) 2015년 bangtoven. All rights reserved.
//

#import "JHGlowView.h"

@implementation JHGlowView
@synthesize value = _value;

- (void)setValue:(float)value
{
    _value = value;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    //// General Declarations
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Gradient Declarations
    NSArray* gradientColors = [NSArray arrayWithObjects:
                               (id)self.centerColor.CGColor,
                               (id)[UIColor clearColor].CGColor, nil];
    CGFloat gradientLocations[] = {0, 1};
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (CFArrayRef)gradientColors, gradientLocations);
    
    //// Oval Drawing
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path addArcWithCenter: CGPointMake(CGRectGetMidX(rect), CGRectGetHeight(rect))
                        radius: CGRectGetWidth(rect) / 2
                    startAngle: M_PI
                      endAngle: 0
                     clockwise: YES];
    [path addLineToPoint: CGPointMake(CGRectGetMidX(rect), CGRectGetHeight(rect))];
    [path closePath];
    CGContextSaveGState(context);
    [path addClip];
    
    float value = self.value;
    if (value < 0) value=0;
    if (value > 1) value=1;
    float intensity = value * CGRectGetWidth(rect) / 2;
    
    CGContextDrawRadialGradient(context, gradient,
                                CGPointMake(CGRectGetMidX(rect), CGRectGetHeight(rect)), 0,
                                CGPointMake(CGRectGetMidX(rect), CGRectGetHeight(rect)), intensity,
                                kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    CGContextRestoreGState(context);
    
    //// Cleanup
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorSpace);
}

@end

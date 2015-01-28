//
//  JHGlowView.h
//  JHGlowView
//
//  Created by Jungho Bang on 2015. 1. 23..
//  Copyright (c) 2015년 bangtoven. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface JHGlowView : UIView

@property (strong,nonatomic) IBInspectable UIColor *centerColor;
@property (nonatomic) IBInspectable float value;

@end

//
//  JHViewController.m
//  JHGlowView
//
//  Created by Jungho Bang on 01/28/2015.
//  Copyright (c) 2014 Jungho Bang. All rights reserved.
//

#import "JHViewController.h"

@implementation JHViewController

- (IBAction)sliderValueChanged:(UISlider *)sender {
    self.glowView.value = sender.value;
}

@end

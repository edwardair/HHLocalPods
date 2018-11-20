//
//  AVAudioSession+OCSupport.m
//  framework
//
//  Created by RayMi on 2018/11/17.
//  Copyright © 2018 WG. All rights reserved.
//

#import "AVAudioSession+OCSupport.h"

@implementation AVAudioSession (OCSupport)
- (void)setCategory_iOS9:(AVAudioSessionCategory)category error:(NSError **)outError {
    [self setCategory:category error:outError];
}
@end

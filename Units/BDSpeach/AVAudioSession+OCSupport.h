//
//  AVAudioSession+OCSupport.h
//  framework
//
//  Created by RayMi on 2018/11/17.
//  Copyright © 2018 WG. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AVAudioSession (OCSupport)
- (void)setCategory_iOS9:(AVAudioSessionCategory)category error:(NSError **)outError API_AVAILABLE(ios(3.0), watchos(2.0), tvos(9.0)) API_UNAVAILABLE(macos);
@end

NS_ASSUME_NONNULL_END

//
//  THSound.h
//  TribeHunter
//
//  Created by LuShubang on 14-4-12.
//  Copyright 2014年 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "SimpleAudioEngine.h"


@interface THSound : NSObject

+(ALuint)playEffect:(NSString*)name;//默认不循环
+(ALuint)playEffect:(NSString*)name loop:(BOOL)loop;
+(ALuint)playEffect:(NSString*)name vol:(float)vol;
+(ALuint)playEffect:(NSString*)name vol:(float)vol loop:(BOOL)loop;
+(void)playMusic:(NSString*)name;//默认循环
+(void)playMusic:(NSString*)name loop:(BOOL)loop;
+(void)stopEffect:(ALuint)sound;
+(void)stopMusic;
+(void)preloadEffect:(NSString*)name;
+(void)preloadMusic:(NSString*)name;
+(void)setMusicVol:(float)vol;
@end

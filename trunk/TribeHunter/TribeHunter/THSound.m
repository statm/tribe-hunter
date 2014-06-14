//
//  THSound.m
//  TribeHunter
//
//  Created by LuShubang on 14-4-12.
//  Copyright 2014年 TH-Team. All rights reserved.
//

#import "THSound.h"

@implementation THSound

+(ALuint)playEffect:(NSString *)name
{
    return [THSound playEffect:name vol:1.0 loop:false];
}

+(ALuint)playEffect:(NSString *)name loop:(BOOL)loop
{
    return [THSound playEffect:name vol:1.0 loop:loop];
}

+(ALuint)playEffect:(NSString *)name vol:(float)vol
{
    return [THSound playEffect:name vol:vol loop:false];
}
+(ALuint)playEffect:(NSString*)name vol:(float)vol loop:(BOOL)loop
{
    ALuint sound;
    if(loop)
    {
        
        sound = [[SimpleAudioEngine sharedEngine] playEffect:name pitch:1.0f pan:0.0f gain:vol];
        if (loop) {
            alSourcei(sound, AL_LOOPING, 1);
        }

    }
    else
    {
        sound = [[SimpleAudioEngine sharedEngine] playEffect:name pitch:1.0f pan:0.0f gain:vol];
    }
    return sound;
    
}

+(void)playMusic:(NSString *)name
{
    [[SimpleAudioEngine sharedEngine] playBackgroundMusic:name];
}
+(void)playMusic:(NSString *)name loop:(BOOL)loop
{
    [[SimpleAudioEngine sharedEngine] playBackgroundMusic:name loop:loop];
}

+(void)stopEffect:(ALuint)sound
{
    [[SimpleAudioEngine sharedEngine] stopEffect:sound];
}
+(void)stopMusic
{
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
}
+(void)preloadEffect:(NSString*)name
{
    [[SimpleAudioEngine sharedEngine] preloadEffect:name];
}
+(void)preloadMusic:(NSString*)name
{
    [[SimpleAudioEngine sharedEngine] preloadBackgroundMusic:name];
}
+(void)setMusicVol:(float)vol
{
    [[SimpleAudioEngine sharedEngine]setBackgroundMusicVolume:vol];
}

@end

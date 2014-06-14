//
//  THAssetMgr.m
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/15.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THAssetMgr.h"

@implementation THAssetMgr {
    NSMutableDictionary* _actionNames;
}



- (id)init {
    if (self = [super init]) {
        THLog(@"%@", @" AssetMgr init");
        _actionNames =[NSMutableDictionary dictionaryWithCapacity:0];
    }
    return self;
}


- (void)loadAnimationAsset:(NSString*)key {
    if ([_actionNames objectForKey:key]) {
        return;
    }
    
    NSString* plistName = [NSString stringWithFormat:@"%@.plist", key];
    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:plistName];
    
    NSMutableArray *names = [NSMutableArray array];
    NSString *path = [[CCFileUtils sharedFileUtils] fullPathForFilename:plistName];
    NSMutableDictionary *dict =[NSDictionary dictionaryWithContentsOfFile:path];
    NSDictionary *framesDict = [dict objectForKey:@"frames"];
    NSEnumerator *enumeratorkey = [framesDict keyEnumerator];
    
    
    for (NSObject *object in enumeratorkey) {
        NSString* objectName = [NSString stringWithFormat:@"%@", object];
        NSRange range1 = [objectName rangeOfString:@"_"];
        NSRange range2 = [objectName rangeOfString:@"_" options:NSBackwardsSearch];
        objectName = [objectName substringWithRange:NSMakeRange(range1.location+1, range2.location-range1.location-1)];
        if(objectName!=nil && ![names containsObject:objectName])
            [names addObject:objectName];
        
    }

    [_actionNames setObject:names forKey:key];
    
    for(NSString* name in names){
        NSMutableArray* frames = [NSMutableArray array];
        for (int i=1; ; i++) {
            CCSpriteFrame* frame =[[CCSpriteFrameCache sharedSpriteFrameCache]
                                   spriteFrameByName:[NSString stringWithFormat:@"%@_%@_%d.png",key,name,i]];
            if(frame) {
                [frames addObject:frame];
            } else {
                break;
            }
        }
        
        CCAnimation* animation = [CCAnimation animationWithSpriteFrames:frames delay:.1f];
        [[CCAnimationCache sharedAnimationCache] addAnimation:animation name:[NSString stringWithFormat:@"%@_%@",key,name]];
    }
}


- (THAnimation*)createAnimation:(NSString*)key {
    if ( [_actionNames objectForKey:key]) {
        NSMutableArray * Names =[_actionNames objectForKey:key];
        NSMutableDictionary* anims = [NSMutableDictionary dictionaryWithCapacity:0];
        for(NSString* name in Names)
        {
            NSString* name2 = [NSString stringWithFormat:@"%@_%@",key,name];
            if([[CCAnimationCache sharedAnimationCache] animationByName:name2])
                [anims setObject:[[CCAnimationCache sharedAnimationCache] animationByName:name2] forKey:name2];
        }
        return [THAnimation animationWithCCAnimations:anims];
    } else {
        return nil;
    }
}


@end

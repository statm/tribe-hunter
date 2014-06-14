//
//  THAssetMgr.m
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/15.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THAssetMgr.h"

@implementation THAssetMgr {
    NSMutableDictionary* _animations;
}

- (id)init {
    if (self = [super init]) {
        THLog(@"%@", @" AssetMgr init");
        _animations = [NSMutableDictionary dictionary];
    }
    return self;
}


//- (void)loadAnimationAsset:(NSString*)key {
//    if (_animations[key]) {
//        return;
//    }
//    
//    NSString* plistName = [NSString stringWithFormat:@"%@.plist", key];
//    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:plistName];
//    
//    NSMutableArray* frames = [NSMutableArray array];
//    for (int i=1; ; i++) {
//        CCSpriteFrame* frame =[[CCSpriteFrameCache sharedSpriteFrameCache]
//                               spriteFrameByName:[NSString stringWithFormat:@"%@%d.png",key,i]];
//        if(frame) {
//            [frames addObject:frame];
//        } else {
//            break;
//        }
//    }
//    
//    CCAnimation* animation = [CCAnimation animationWithSpriteFrames:frames delay:.1f];
//    _animations[key] = animation;
//}
//
//
//- (THAnimation*)createAnimation:(NSString*)key {
//    if (_animations[key]) {
//        return [THAnimation animationWithCCAnimation:_animations[key]];
//    } else {
//        return nil;
//    }
//}


@end

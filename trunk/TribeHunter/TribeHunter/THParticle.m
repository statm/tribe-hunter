//
//  THParticle.m
//  dispObj2
//
//  Created by LuShubang on 14-3-9.
//  Copyright 2014年 LuShubang. All rights reserved.
//

#import "THParticle.h"


@implementation THParticle

-(CCParticleSystem*)load:(NSString*)name
{
    _particle=[[CCParticleSystemQuad alloc] initWithFile:[NSString stringWithFormat:@"%@.plist",name]];
    return _particle;
}

-(CCParticleSystem*)move:(CGPoint)from to:(CGPoint)to duration:(float)duration
{
    _particle.positionType=kCCPositionTypeRelative;
    _particle.position=from;
    [_particle runAction:
     [CCSequence actions:
      [CCMoveTo actionWithDuration:duration position:to],
      [CCCallBlockN actionWithBlock:^(CCNode *node) {
         [node removeFromParentAndCleanup:YES];
     }],
      nil]];
    return _particle;
}

@end

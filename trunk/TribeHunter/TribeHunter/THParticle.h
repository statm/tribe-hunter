//
//  THParticle.h
//  dispObj2
//
//  Created by LuShubang on 14-3-9.
//  Copyright 2014年 LuShubang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface THParticle : NSObject

@property CCParticleSystem* particle;

-(CCParticleSystem*)load:(NSString*)name;
-(CCParticleSystem*)move:(CGPoint)from to:(CGPoint)to duration:(float)duration;

@end

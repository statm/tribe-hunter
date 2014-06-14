//
//  THAnimation.m
//  TribeHunter
//
//  Created by Shubang Lu on 2014/2/21.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THAnimation.h"


@implementation THAnimation

-(void)load:(NSString *)name
{
    if(_frames==nil) _frames = [NSMutableDictionary dictionaryWithCapacity:0];
    NSString* pname = [NSString stringWithFormat:@"%@.plist", name];
    NSMutableArray* frames = [NSMutableArray array];
    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:pname];
    //NSMutableArray *walkAnimFrames = [NSMutableArray array];
    for (int i=1; ; i++) {
        CCSpriteFrame* currentFrame =[[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:
                                      [NSString stringWithFormat:@"%@%d.png",name,i]];
        if(currentFrame==nil) break;
        [frames addObject:currentFrame];
    }
    [_frames setObject:frames forKey:name];
    //return _pname;
}

-(void)load:(NSString*)name nameItAs:(NSString*)newName
{
    if(_frames==nil) _frames = [NSMutableDictionary dictionaryWithCapacity:0];
    
    if([_frames objectForKey:newName]!=nil) NSLog(@"Error: Name Exists");
    else
    {
        NSString* pname = [NSString stringWithFormat:@"%@.plist", name];
        NSMutableArray* frames = [NSMutableArray array];
        [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:pname];
        //NSMutableArray *walkAnimFrames = [NSMutableArray array];
        for (int i=1; ; i++) {
            CCSpriteFrame* currentFrame =[[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:
                                      [NSString stringWithFormat:@"%@%d.png",name,i]];
            if(currentFrame==nil) break;
            [frames addObject:currentFrame];
        }
    [_frames setObject:frames forKey:newName];
    }
}

-(void)load:(NSString*)name from:(int)from to:(int)to nameItAs:(NSString *)newName
{
    if(_frames==nil) _frames = [NSMutableDictionary dictionaryWithCapacity:0];
    
    if([_frames objectForKey:newName]!=nil) NSLog(@"Error: Name Exists");
    else
    {
        NSString* pname = [NSString stringWithFormat:@"%@.plist", name];
        NSMutableArray* frames = [NSMutableArray array];
        [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:pname];
        //NSMutableArray *walkAnimFrames = [NSMutableArray array];
        for (int i=from; i<=to ; i++) {
            CCSpriteFrame* currentFrame =[[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:
                                          [NSString stringWithFormat:@"%@%d.png",name,i]];
            if(currentFrame==nil) break;
            [frames addObject:currentFrame];
        }
        [_frames setObject:frames forKey:newName];
    }
}

-(void)loadWithFiles:(NSString*)name
{
    if(_frames==nil) _frames = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableArray* frames = [NSMutableArray array];
    NSString* file;
    for (int i = 1; ; i++)
    {
        file =nil;
        file = [NSString stringWithFormat:@"%@%i.png", name, i];
        CCTexture2D* texture = [[CCTextureCache sharedTextureCache] addImage:file];
        if(texture==nil) break;
        CGSize texSize = texture.contentSize;
        CGRect texRect = CGRectMake(0, 0, texSize.width, texSize.height);
        CCSpriteFrame* frame = [CCSpriteFrame frameWithTexture:texture rect:texRect];
        
        [frames addObject:frame];
    }
    [_frames setObject:frames forKey:name];
}

-(void)loadWithFiles:(NSString *)name nameItAs:(NSString *)newName
{
    if(_frames==nil) _frames = [NSMutableDictionary dictionaryWithCapacity:0];
    if([_frames objectForKey:newName]!=nil) NSLog(@"Error: Name Exists");
    else
    {
        NSMutableArray* frames = [NSMutableArray array];
        NSString* file;
        for (int i = 1; ; i++)
        {
            file =nil;
            file = [NSString stringWithFormat:@"%@%i.png", name, i];
            CCTexture2D* texture = [[CCTextureCache sharedTextureCache] addImage:file];
            if(texture==nil) break;
            CGSize texSize = texture.contentSize;
            CGRect texRect = CGRectMake(0, 0, texSize.width, texSize.height);
            CCSpriteFrame* frame = [CCSpriteFrame frameWithTexture:texture rect:texRect];
        
            [frames addObject:frame];
        }
        [_frames setObject:frames forKey:newName];
    }

}

-(void) loadWithFiles:(NSString *)name from:(int)from to:(int)to nameItAs:(NSString *)newName
{
    if(_frames==nil) _frames = [NSMutableDictionary dictionaryWithCapacity:0];
    if([_frames objectForKey:newName]!=nil) NSLog(@"Error: Name Exists");
    else
    {
        NSMutableArray* frames = [NSMutableArray array];
        NSString* file;
        for (int i = from; i<=to ; i++)
        {
            file =nil;
            file = [NSString stringWithFormat:@"%@%i.png", name, i];
            CCTexture2D* texture = [[CCTextureCache sharedTextureCache] addImage:file];
            if(texture==nil) break;
            CGSize texSize = texture.contentSize;
            CGRect texRect = CGRectMake(0, 0, texSize.width, texSize.height);
            CCSpriteFrame* frame = [CCSpriteFrame frameWithTexture:texture rect:texRect];
            
            [frames addObject:frame];
        }
        [_frames setObject:frames forKey:newName];
    }
}

-(void)create:(NSString*)name delay:(float) delay
{

    
    if(_animation==nil) _animation = [NSMutableDictionary dictionaryWithCapacity:0] ;
    if(_action==nil) _action = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableArray* frames = [_frames objectForKey:name];
    CCAnimation* animation = [CCAnimation animationWithSpriteFrames:frames delay:delay];
    [_animation setObject:animation forKey:name];
    _sprite = [CCSprite spriteWithSpriteFrame:frames[0]];
    CCAction* action = [CCRepeatForever actionWithAction:
                        [CCAnimate actionWithAnimation:animation]];
    [_action setObject:action forKey:name];
}

/*-(void)createWithFiles:(NSString*)name delay:(float)delay
{
    
    if(_animation==nil) _animation = [[NSMutableDictionary dictionaryWithCapacity:0] retain];
    if(_action==nil) _action = [[NSMutableDictionary dictionaryWithCapacity:0] retain];
    NSMutableArray* frames = [_frames objectForKey:name];
    CCAnimation* animation = [CCAnimation animationWithSpriteFrames:frames delay:delay];
    [_animation setObject:animation forKey:name];
    //_sprite = [CCSprite spriteWithSpriteFrameName:[NSString stringWithFormat:@"%@1.png",name]];
    _sprite=[CCSprite spriteWithSpriteFrame:frames[0]];
    CCAction* action =[[CCRepeatForever actionWithAction:
                        [CCAnimate actionWithAnimation:animation]]retain];
    [_action setObject:action forKey:name];
}*/

/*-(void)playAnim:(ccTime)dt
{
    [_sprite runAction: _action];
}*/

-(void)playAnim:(NSString*)actionName
{
    [_sprite runAction: [_action objectForKey:actionName]];
}

-(void)playOnce:(NSString *)actionName
{
    [_sprite runAction: [CCAnimate actionWithAnimation:[_animation objectForKey:actionName]]];
}

-(void)stopAnim:(NSString*)actionName
{
    [_sprite stopAction:[_action objectForKey:actionName]];
}

-(void)stopAllAnims
{
    [_sprite stopAllActions];
}

-(void)pauseAnims
{
    [_sprite pauseSchedulerAndActions];
}

-(void)resumeAnims
{
    [_sprite resumeSchedulerAndActions];
}

-(void)changeSpeed:(NSString *)actionName to:(float)delay
{
    CCAnimation* animation =[_animation objectForKey:actionName];
    [self stopAnim:actionName];
    [animation setDelayPerUnit:delay];
    [_sprite runAction:[CCRepeatForever actionWithAction:[ CCAnimate actionWithAnimation:animation ]]];
}

-(void)info:(NSString *)type
{
    NSMutableDictionary* dict = _frames;
    if([type isEqual:@"action"]) dict = _action;
    else if ([type isEqual:@"animation"]) dict = _animation;
    int count =[dict count];
    NSLog(@"type:%@",type);
    NSLog(@"count:%i", count);
    NSEnumerator *enumeratorkey = [dict keyEnumerator];
    //NSEnumerator *enumeratorobj = [_action objectEnumerator];
    for (NSObject *object in enumeratorkey) {
        NSLog(@"key:%@", object);
    }
}

-(void)info
{
    [self info:@"frames"];
    [self info:@"action"];
    [self info:@"animation"];
}


-(void)removeFrames:(NSString *)actionName
{
    [_frames removeObjectForKey:actionName];
}

-(void)removeAllFrames
{
    [_frames removeAllObjects];
}

-(void)removeAnimation:(NSString *)actionName
{
    [_animation removeObjectForKey:actionName];
}

-(void)removeAllAnimations
{
    [_animation removeAllObjects];
}

-(void)removeAction:(NSString *)actionName
{
    [_action removeObjectForKey:actionName];
}

-(void)removeAllActions
{
    [_action removeAllObjects];
}

@end

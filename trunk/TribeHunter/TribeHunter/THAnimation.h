//
//  THAnimation.h
//  TribeHunter
//
//  Created by Shubang Lu on 2014/2/21.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface THAnimation: NSObject{
    CCSprite* _sprite;
    NSMutableDictionary* _action;
    NSMutableDictionary* _animation;
    NSMutableDictionary* _frames;
    NSString* _objectName;
    CCAction* _currentAction;
}

@property CCSprite* sprite;
@property  NSString* objectName;
@property CCAction* currentAction;

// -----------------------------------------------------------------------
#pragma mark - 读取图片资源作为动画的帧
// -----------------------------------------------------------------------

/** 读取plist文件并将图片载入作为帧 */
-(void)load:(NSString*)name;

/** 读取并自定义命名 */     //上一方法默认使用文件名（name）为名，无需自定义
-(void)load:(NSString*)name nameItAs:(NSString*)newName;

/** 读取并指定起止图片 */
-(void)load:(NSString *)name from:(int)from to:(int)to nameItAs:(NSString *)newName;

/** 直接读取图片文件(png)作为帧 */
-(void)loadWithFiles:(NSString*)name;

/** 读取并自定义命名 */    //上一方法默认使用文件名（name）为名，无需自定义
-(void)loadWithFiles:(NSString*)name nameItAs:(NSString*)newName;

/** 读取并指定起止图片 */
-(void)loadWithFiles:(NSString *)name from:(int)from to:(int)to nameItAs:(NSString *)newName;




// -----------------------------------------------------------------------
#pragma mark - 生成动画
// -----------------------------------------------------------------------

/** 使用load函数读取的帧生成动画。delay为相邻帧之间时间间隔，单位为秒 */
-(void)create:(NSString*)name delay:(float) delay;



// -----------------------------------------------------------------------
#pragma mark - 播放控制
// -----------------------------------------------------------------------

/** 循环播放指定动画 */
-(void)playAnim:(NSString*) actionName;

/** 停止指定动画 */
-(void)stopCurrentAnim;

/** 播放一次指定动画 */
-(void)playOnce:(NSString*) actionName;

/** 暂停动画 */
-(void)pauseAnims;

/** 恢复被暂停的动画 */
-(void)resumeAnims;

/** 停止所有动画 */
-(void)stopAllAnims;

/** 变速，delay为相邻帧之间时间间隔，单位为秒 */
-(void)changeSpeed:(NSString*)actionName to:(float)delay;



// -----------------------------------------------------------------------
#pragma mark - 调试
// -----------------------------------------------------------------------

/** 输出指定类型的相关信息(数量和各元素的名字) */
-(void)info:(NSString*)type; //type 填 @“frames", @"action", 或@"animation"

/** 输出所有类型信息 */
-(void)info;



// -----------------------------------------------------------------------
#pragma mark - 内存释放
// -----------------------------------------------------------------------

/** 删除指定动画的所有帧 */
-(void)removeFrames:(NSString*) actionName;

/** 删除此对象的所有帧 */
-(void)removeAllFrames;

/** 删除指定动画 */
-(void)removeAnimation:(NSString*) actionName;

/** 删除此对象的所有动画 */
-(void)removeAllAnimations;

/** 删除指定Action */
-(void)removeAction:(NSString*) actionName;

/** 删除此对象的所有Action */
-(void)removeAllActions;


+(THAnimation*)animationWithCCAnimations:(NSMutableDictionary*)anim;

-(void)playDie;

@end

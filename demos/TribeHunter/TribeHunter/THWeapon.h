//
//  THWeapon.h
//  TribeHunter
//
//  Created by Baichuan Yang on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THGameObject.h"

@interface THWeapon : THGameObject

- (id)initWithTarget:(CGPoint)target attkType:(int)attackType attkPosX:(int)attackPosX attkPosY:(int)attackPosY attkDir:(int)attackdir;

- (void)moveAsLine;
-(void)moveAsLineParabola;
-(void)moveAsParabola;

@end

//
//  THWeapon.m
//  TribeHunter
//
//  Created by Baichuan Yang on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THWeapon.h"
#import "THAnimation.h"

#define G 180

@implementation THWeapon {
    int _attackType;
    int _attackPosX;
    int _attackPosY;
    int _dir;
    float _vx;
    float _vy;
    CGPoint _target;
    float _time;
}

/** 输入参数：攻击目标的坐标点，攻击轨迹的类型，武器出发的位置X和Y， 武器飞行的方向：1为从左到右，-1为从右到左*/
- (id)initWithTarget:(CGPoint)target attkType:(int)attackType attkPosX:(int)attackPosX attkPosY:(int)attackPosY attkDir:(int)attackdir{
    if (self = [super init]) {
        _target = target;
        _x = attackPosX;
        _y = attackPosY;
        _attackPosX = attackPosX;
        _attackPosY = attackPosY;
        _dir = attackdir;
        _vx = (_target.x - _attackPosX) / 5;
        _vy = (_target.y - _attackPosY) / 1;
        _time = 0;
        _attackType = attackType;

        THAnimation* anim = [[THAnimation alloc] init];
        [anim load:@"arrow"];
        [anim create:@"arrow" delay:0.1f];
        anim.sprite.position = CGPointMake(_x, _y);
        [anim playAnim:@"arrow"];
        _appearance = anim.sprite;
    }
    return self;
}

/** 直线式攻击 */
- (void)moveAsLine {
    _x = _attackPosX + (_dir) * _vx * _time;
    _y = _attackPosY + _vy * _time;

    _appearance.position = CGPointMake(_x, _y);
}

/** 斜抛式攻击 内含一些调试用的常数*/
- (void)moveAsParabola {
    _x = _attackPosX + (_dir) * (_vx + 50) * _time;
    _y = _attackPosY + (_vy + 40) * _time - 0.5 * ( G - 60 ) * _time * _time;

    _appearance.position = CGPointMake(_x, _y);
}

/** 平抛式攻击 内含一些调试用的常数*/
-(void)moveAsLineParabola {
    _x = _attackPosX + (_dir) * (_vx + 200) * _time;
    _y = _attackPosY - (0.5 * (G - 30) * _time * _time);

    _appearance.position = CGPointMake(_x, _y);

}

- (void)update:(double)delta {
   // delta = 0.01;
    _time += delta;
    if (_attackType == 1) {
        [self moveAsLine];
    }else if(_attackType == 2){
        [self moveAsParabola];
    }else{
        [self moveAsLineParabola];
    }
}

@end

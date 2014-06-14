//
//  Macros.h
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/11.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#if __has_feature(objc_arc)
#define THLog(format, ...) CFShow((__bridge CFStringRef)[NSString stringWithFormat:[@"TH $ " stringByAppendingString:format], ## __VA_ARGS__]);
#else
#define THLog(format, ...) CFShow([NSString stringWithFormat:[@"TH $ " stringByAppendingString:format], ## __VA_ARGS__]);
#endif

#define UIViewAutoresizingAll UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight

#define BULLET_TIME .8

#define RANDOM(A, B) (arc4random() % B < A)

#define ROW_HEIGHT 35

#define R2P(R) (R * ROW_HEIGHT + ROW_HEIGHT / 2 + 30)
#define P2R(P) max(0, min(5, round((P - 30 - ROW_HEIGHT / 2) / ROW_HEIGHT)))

#define OUT(X, Y) (X < 0 || X > 550 || Y < 0 || Y > 270)
#define INRANGE(V, A, B) (V >= min(A, B) && V <= max(A, B))

#define FADE_IN_TIME .3
#define BUFFER_TIME .15
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
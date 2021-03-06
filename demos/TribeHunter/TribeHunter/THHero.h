//
//  THHero.h
//  TribeHunter
//
//  Created by Baichuan Yang on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THGameObject.h"
#import "THAttributes.h"

@interface THHero : THGameObject {
    THAttributes* _baseAttributes;
    THAttributes* _currentAttributes;
}

@property (readonly) THAttributes* baseAttributes;
@property (readonly) THAttributes* currentAttributes;

@end

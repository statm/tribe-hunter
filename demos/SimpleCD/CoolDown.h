//
//  CoolDown.h
//  SimpleCD
//
//  Created by Yue Cai on 2/12/14.
//  Copyright (c) 2014 Yue Cai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
@interface CoolDown : NSObject

//the grey image showing the progress of cooling down
@property (copy) CCProgressTimer* timer;

//the button where user could click on to select a technique
@property (copy) CCMenuItem* button;

//this is the empty sprite to hold button and timer together;
@property (copy) CCSprite* body;

//length of cooling down
@property double coolDownLength;

//tell whether the technique can be used
@property BOOL ready;

//endtime of a cool down
@property double endTime;

//start time of a cool down
@property double startTime;


//initizlize the button and its timer
- (id) initWithFile: (NSString *)image time:(NSString *) greyscale;

//update the percentage of the timer
- (void) update:(ccTime)delta;

//preparation work for a cool down
- (void) startCD: (double)length;
@end

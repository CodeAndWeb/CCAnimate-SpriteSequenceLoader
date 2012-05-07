//
//  CCAnimation+SequenceLoader.m
//  TurtlePower
//
//  Created by Andreas Löw on 16.12.10.
//  Copyright 2010 code-and-web. All rights reserved.
//

#import "CCAnimation+SequenceLoader.h"
#import "CCAnimate+SequenceLoader.h"

@implementation CCAnimate (sequenceLoader)

+(id) actionWithSpriteSequence:(NSString*)nameFormat numFrames:(int)numFrames delay:(float)delay restoreOriginalFrame:(BOOL)restoreOriginalFrame
{
    return [self actionWithAnimation:[CCAnimation animationWithSpriteSequence:nameFormat numFrames:numFrames delay:delay] 
                restoreOriginalFrame:restoreOriginalFrame];
}

@end


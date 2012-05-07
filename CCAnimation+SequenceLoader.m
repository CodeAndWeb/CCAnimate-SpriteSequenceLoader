/*
 MIT License
 
 Copyright (c) 2010 Andreas Loew / www.code-and-web.de
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
*/

#import "CCAnimation+SequenceLoader.h"


@implementation CCAnimation (sequenceLoader)

+(id) animationWithSpriteSequence:(NSString*)nameFormat numFrames:(int)numFrames delay:(float)delay
{
    // get sprite frame cache's singleton
    CCSpriteFrameCache *cache = [CCSpriteFrameCache sharedSpriteFrameCache];
    
    // create array with all frames
    NSMutableArray *animFrames = [NSMutableArray arrayWithCapacity:numFrames];

    // load sequence with given end, assert on error
    for(int i = 1; i <= numFrames; i++)
    {
        NSString *name = [NSString stringWithFormat:nameFormat,i];
        CCSpriteFrame *frame = [cache spriteFrameByName:name];
        NSAssert1(frame, @"Frame %@ not found", name);
        [animFrames addObject:frame];
    }        

    return [self
            animationWithFrames:animFrames
            delay:delay];
}

+(id) animationWithSpriteSequence:(NSString*)nameFormat delay:(float)delay
{
    return [self
            animationWithSpriteSequence:nameFormat
            numFrames: -1
            delay:delay];
}

@end

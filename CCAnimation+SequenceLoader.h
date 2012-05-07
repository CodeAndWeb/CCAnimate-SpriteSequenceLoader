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

#import "cocos2d.h"

@interface CCAnimation (sequenceLoader)

/**
 * Load a sequence of sprites with given format.
 * Start index of sprite must begin with 1.
 * E.g. sprite_0001.png sprite_0002.png, ....
 * Format for this sequence would be "sprite_%04d.png"
 *
 * @param nameFormat format for the sprite names, containing
 *                   a single d placeholder, may be formatted
 *                   using width + fill character like %04d
 * @param numFrames  number of frames to load, -1 to load all
 *                   frames in sequence, stopping on first
 *                   sprite not found in the sequence
 * @param delay      delay between 2 frames
 */
+(id) animationWithSpriteSequence:(NSString*)nameFormat numFrames:(int)numFrames delay:(float)delay;

@end





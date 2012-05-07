CCAnimate-SpriteSequenceLoader
==============================

Simple addon for Cocos2d to allow loading animations from a sprite sheet.

Name your sprite like

+ ball01.png
+ ball02.png
+ ...

Then use the following snippet to load the animation:

  #import "CCAnimate+SequenceLoader.h"
  
  // with specified number of frames
  [sprite runAction:[CCAnimate actionWithSpriteSequence:@"ball%02d.png"
                                              numFrames:4
                                                  delay:0.1
                                   restoreOriginalFrame:NO] ];
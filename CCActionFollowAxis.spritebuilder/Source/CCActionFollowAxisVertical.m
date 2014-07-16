//
//  CCActionFollowVertical.m
//  CCActionFollowAxis
//
//  Created by Benjamin Reynolds on 7/15/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCActionFollowAxisVertical.h"

@implementation CCActionFollowAxisVertical

-(void) step:(CCTime) dt
{
    if(_boundarySet)
    {
        CGPoint tempPos = ccpSub( _halfScreenSize, _followedNode.position);
        [(CCNode *)_target setPosition:ccp(clampf(tempPos.x, _leftBoundary, _rightBoundary), tempPos.y)];
    }
    else
        [(CCNode *)_target setPosition:ccpSub( _halfScreenSize, _followedNode.position )];
}

@end

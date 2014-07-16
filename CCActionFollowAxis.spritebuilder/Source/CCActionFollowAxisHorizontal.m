//
//  CCActionFollowHorizontal.m
//  CCActionFollowAxis
//
//  Created by Benjamin Reynolds on 7/15/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCActionFollowAxisHorizontal.h"

@implementation CCActionFollowAxisHorizontal

-(void) step:(CCTime) dt
{
    if(_boundarySet)
    {
        CGPoint tempPos = ccpSub( _halfScreenSize, _followedNode.position);
        [(CCNode *)_target setPosition:ccp(tempPos.x, clampf(tempPos.y, _bottomBoundary, _topBoundary))];
    }
    else
        [(CCNode *)_target setPosition:ccpSub( _halfScreenSize, _followedNode.position )];
}

@end

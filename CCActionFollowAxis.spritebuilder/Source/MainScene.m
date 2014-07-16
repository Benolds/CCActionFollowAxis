//
//  MainScene.m
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "MainScene.h"
#import "CCActionFollowAxisHorizontal.h"
#import "CCActionFollowAxisVertical.h"

@implementation MainScene
{
    CCNodeColor* _player;
    CCPhysicsNode* _physicsNode;
}

- (void)didLoadFromCCB
{
    self.userInteractionEnabled = YES;
    
    CGRect worldBounds = CGRectMake(0, 0, [CCDirector sharedDirector].viewSize.width, [CCDirector sharedDirector].viewSize.height);
    
    // NOTE: the width of the worldBounds is ignored in a CCActionFollowHorizontal -- only the height is important
//    CCActionFollowHorizontal* followHorizontal = [CCActionFollowHorizontal actionWithTarget:_player worldBoundary:worldBounds];
//    [_physicsNode runAction:followHorizontal];
    
    // NOTE: the height of the worldBounds is ignored in a CCActionFollowVertical -- only the width is important
    CCActionFollowAxisVertical* followVertical = [CCActionFollowAxisVertical actionWithTarget:_player worldBoundary:worldBounds];
    [_physicsNode runAction:followVertical];
    
}

// tapping the screen moves the player towards the touch
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    [_player.physicsBody applyImpulse:ccp([touch locationInNode:_physicsNode].x - _player.position.x, [touch locationInNode:_physicsNode].y - _player.position.y)];
}

@end

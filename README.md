CCActionFollowAxis
==================

A subclass of CCActionFollow which restricts the worldBoundary to a single axis, but allows for infinite following in the other axis (vertical or horizontal).

It can be applied to any CCNode in an identical way that a CCActionFollow would be applied ([CCActionFollow Class Reference](http://www.cocos2d-iphone.org/docs/api/Classes/CCActionFollow.html)).


Usage
=====

Include the ‘CCActionFollowAxisVertical’ and ‘CCActionFollowAxisHorizontal’ files in your project.


CCActionFollowHorizontal
========================

This action can be used for an infinite horizontally-scrolling world with a fixed height (eg. Flappy Bird)

    CGRect worldBounds = CGRectMake(0, 0, [CCDirector sharedDirector].viewSize.width, [CCDirector sharedDirector].viewSize.height);
    // NOTE: the width of the worldBounds is ignored in a CCActionFollowAxisHorizontal -- only the height is important
    
    CCActionFollowHorizontal* followHorizontal = [CCActionFollowHorizontal actionWithTarget:_player worldBoundary:worldBounds];
    [_node runAction:followHorizontal];
    
    

CCActionFollowVertical
========================

This action can be used for an infinite vertically-scrolling world with a fixed width (eg. Doodle Jump)

    CGRect worldBounds = CGRectMake(0, 0, [CCDirector sharedDirector].viewSize.width, [CCDirector sharedDirector].viewSize.height);
    // NOTE: the height of the worldBounds is ignored in a CCActionFollowAxisVertical -- only the width is important

    CCActionFollowAxisVertical* followVertical = [CCActionFollowAxisVertical actionWithTarget:_player worldBoundary:worldBounds];
    [_node runAction:followVertical];



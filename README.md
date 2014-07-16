CCActionFollowAxis
==================

A subclass of CCActionFollow which restricts the worldBoundary to a single axis, but allows for infinite following in the other axis (vertical or horizontal)



CCActionFollowHorizontal
========================


CGRect worldBounds = CGRectMake(0, 0, [CCDirector sharedDirector].viewSize.width, [CCDirector sharedDirector].viewSize.height);

CCActionFollowHorizontal* followHorizontal = [CCActionFollowHorizontal actionWithTarget:_player worldBoundary:worldBounds];

[_node runAction:followHorizontal];
    
// NOTE: the width of the worldBounds is ignored in a CCActionFollowHorizontal -- only the height is important


CCActionFollowVertical
========================


CGRect worldBounds = CGRectMake(0, 0, [CCDirector sharedDirector].viewSize.width, [CCDirector sharedDirector].viewSize.height);

CCActionFollowAxisVertical* followVertical = [CCActionFollowAxisVertical actionWithTarget:_player worldBoundary:worldBounds];

[_node runAction:followVertical];

// NOTE: the height of the worldBounds is ignored in a CCActionFollowVertical -- only the width is important

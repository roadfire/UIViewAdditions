UIViewAdditions
===============

[![Build Status](https://travis-ci.org/roadfire/UIViewAdditions.png)](https://travis-ci.org/roadfire/UIViewAdditions)

Convenience methods for UIView, nicely bundled in a category.

Adds getters and setters to UIView for the following:

`top` - the top of the view (`frame.origin.y`)

`bottom` - the bottom of the view (`frame.origin.y + frame.size.height`)

`left` - the left side of the view (`frame.origin.x`)

`right` - the right side of the view (`frame.origin.x + frame.size.width`)

`centerX` - the center x position of the view (`center.x`)

`centerY` - the center y position of the view (`center.y`)

`height` - the height of the view (`frame.size.height`)

`width` - the width of the view (`frame.size.width`)


## Examples

    UIView *blackBox = [[UIView alloc] init];
    blackBox.backgroundColor = [UIColor blackColor];
    blackBox.width = 40;
    blackBox.height = 40;
    [self.view addSubview:blackBox];
    
    UIView *whiteBox = [[UIView alloc] init];
    whiteBox.backgroundColor = [UIColor whiteColor];
    whiteBox.width = 80;
    whiteBox.height = 80;
    whiteBox.left = blackBox.right;
    [self.view addSubview:whiteBox];

For more examples, see [RSViewController.m](https://github.com/joshuatbrown/UIViewAdditions/blob/master/UIViewAdditions/RSViewController.m).


## Getting Started

Using UIViewAdditions in your project is simple; just copy the two files from the Classes folder (`UIView+RSAdditions.h/m`) into your project. Then just `#import "UIView+RSAdditions.h"` in your classes.

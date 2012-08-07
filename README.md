UIViewAdditions
===============

Convenience methods for UIView, nicely bundled in a category


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

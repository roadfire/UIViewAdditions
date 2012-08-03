UIViewAdditions
===============

Convenience methods for UIView, nicely bundled in a category

Using UIViewAdditions in your project
=====================================

Using UIViewAdditions in your project is simple; just clone UIViewAdditions and copy the two files from the Classes folder (`UIView+RSAdditions.h/m`) into your project. Then just `#import "UIView+RSAdditions.h"` wherever you want to use the convenience methods.

Examples
========

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

For more examples, see `RSViewController` in this project.

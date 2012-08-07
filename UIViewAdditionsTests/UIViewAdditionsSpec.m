#import <Kiwi/Kiwi.h>
#import "UIView+RSAdditions.h"

SPEC_BEGIN(UIViewAdditionsSpec)

describe(@"UIViewAdditionsSpec", ^{
    it(@"should get the top", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 10, 0, 0)];
        [[theValue(view.top) should] equal:theValue(10)];
    });
    
    it(@"should get the bottom", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 10, 0, 100)];
        [[theValue(view.bottom) should] equal:theValue(110)];
    });
    
    it(@"should get the height", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 10, 0, 100)];
        [[theValue(view.height) should] equal:theValue(100)];
    });
    
    it(@"should get the width", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(7, 10, 50, 100)];
        [[theValue(view.width) should] equal:theValue(50)];
    });
    
    it(@"should get the left", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(7, 10, 50, 100)];
        [[theValue(view.left) should] equal:theValue(7)];
    });
    
    it(@"should get the right", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(7, 10, 50, 100)];
        [[theValue(view.right) should] equal:theValue(57)];
    });
    
    it(@"should set the top", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(7, 10, 50, 100)];
        view.top = 3;
        [[theValue(view.top) should] equal:theValue(3)];
    });
    
    it(@"should set the bottom", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(7, 10, 50, 100)];
        view.bottom = 105;
        
        [[theValue(view.bottom) should] equal:theValue(105)];
        [[theValue(view.top) should] equal:theValue(5)];
        [[theValue(view.height) should] equal:theValue(100)];
    });
    
    it(@"should set the left", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(7, 10, 50, 100)];
        view.left = 5;
        [[theValue(view.left) should] equal:theValue(5)];
    });
    
    it(@"should set the right", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(7, 10, 50, 100)];
        view.right = 60;
        
        [[theValue(view.right) should] equal:theValue(60)];
        [[theValue(view.left) should] equal:theValue(10)];
        [[theValue(view.width) should] equal:theValue(50)];
    });
    
    it(@"should get the centerX", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 50, 100)];
        [[theValue(view.centerX) should] equal:theValue(35)];
    });
    
    it(@"should set the centerX", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 10, 50, 100)];
        view.centerX = 30;
        [[theValue(view.centerX) should] equal:theValue(30)];
        [[theValue(view.left) should] equal:theValue(5)];
        [[theValue(view.width) should] equal:theValue(50)];
    });

    it(@"should get the centerY", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 10, 50, 100)];
        [[theValue(view.centerY) should] equal:theValue(60)];
    });
    
    it(@"should set the centerY", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 10, 50, 100)];
        view.centerY = 65;
        [[theValue(view.centerY) should] equal:theValue(65)];
        [[theValue(view.top) should] equal:theValue(15)];
        [[theValue(view.height) should] equal:theValue(100)];
    });
    

    it(@"should set the height", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(7, 10, 50, 100)];
        view.height = 9;
        [[theValue(view.height) should] equal:theValue(9)];
    });
    
    it(@"should set the width", ^{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(7, 10, 50, 100)];
        view.width = 12;
        [[theValue(view.width) should] equal:theValue(12)];
    });
});
                                 
SPEC_END
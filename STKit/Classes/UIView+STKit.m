//
//  UIView+STKit.m
//  STKitTest
//
//  Created by bin on 16/9/1.
//  Copyright © 2016年 bin. All rights reserved.
//

#import "UIView+STKit.h"

@implementation UIView (STKit)

#pragma frame config
- (UIView *)setOriginX:(CGFloat)originX {
    [self setFrame:CGRectMake(originX,
                              self.frame.origin.y,
                              self.frame.size.width,
                              self.frame.size.height)];
    return self;
}

- (UIView *)setOriginY:(CGFloat)originY {
    [self setFrame:CGRectMake(self.frame.origin.x,
                              originY,
                              self.frame.size.width,
                              self.frame.size.height)];
    return self;
}

- (UIView *)setWidth:(CGFloat)width {
    [self setFrame:CGRectMake(self.frame.origin.x,
                              self.frame.origin.y,
                              width,
                              self.frame.size.height)];
    return self;
}

- (UIView *)setHeight:(CGFloat)height {
    [self setFrame:CGRectMake(self.frame.origin.x,
                              self.frame.origin.y,
                              self.frame.size.width,
                              height)];
    return self;
}

#pragma mark - subview operation
- (void)removeAllSubViews {
    for (UIView *subView in self.subviews) {
        [subView removeFromSuperview];
    }
}

- (BOOL)containsSubView:(UIView *)subView {
    if (nil == subView) {
        return NO;
    }
    NSMutableArray *subViewCheckArray = [[NSMutableArray alloc] initWithObjects:self, nil];
    while (subViewCheckArray.count) {
        UIView *topView = [subViewCheckArray firstObject];
        if ([topView isKindOfClass:[UIView class]]) {
            if (topView == subView) {
                return YES;
            } else {
                [subViewCheckArray removeObject:topView];
                if (topView.subviews.count) {
                    [subViewCheckArray addObjectsFromArray:topView.subviews];
                }
            }
        }
    }
    return NO;
}

- (NSArray *)siblingsView {
    NSMutableArray *superViewSubViewArray = [NSMutableArray arrayWithArray:self.superview.subviews];
    [superViewSubViewArray removeObject:self];
    return superViewSubViewArray;
}

- (UIView *)upperView {
    NSUInteger currentViewIndex = [self.superview.subviews indexOfObject:self];
    NSUInteger upperViewIndex = currentViewIndex + 1;
    if (self.superview.subviews.count > upperViewIndex) {
        return [self.superview.subviews objectAtIndex:upperViewIndex];
    } else {
        return nil;
    }
}

- (UIView *)belowView {
    NSUInteger currentViewIndex = [self.superview.subviews indexOfObject:self];
    if (0 == currentViewIndex) {
        return nil;
    }
    NSUInteger belowViewIndex = currentViewIndex - 1;
    return [self.superview.subviews objectAtIndex:belowViewIndex];
}

- (UIView *)topSubView {
    return self.superview.subviews.firstObject;
}

@end

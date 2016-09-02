//
//  UIView+STKit.h
//  STKitTest
//
//  Created by bin on 16/9/1.
//  Copyright © 2016年 bin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (STKit)

#pragma frame config

/**
 *  change origin x only
 *
 *  @param originX
 *
 *  @return self
 */
- (UIView *)setOriginX:(CGFloat)originX;

/**
 *  change origin y only
 *
 *  @param originY
 *
 *  @return self
 */
- (UIView *)setOriginY:(CGFloat)originY;

/**
 *  change width only
 *
 *  @param width
 *
 *  @return self
 */
- (UIView *)setWidth:(CGFloat)width;

/**
 *  change height only
 *
 *  @param height
 *
 *  @return self
 */
- (UIView *)setHeight:(CGFloat)height;

#pragma mark - subview operation
/**
 *  clear all subviews
 */
- (void)removeAllSubViews;

/**
 *  check current view contain specific view
 *
 *  @param subView
 *
 *  @return yes if contain
 */
- (BOOL)containsSubView:(UIView *)subView;

/**
 *  find the sibling views
 *
 *  @return return the superview array without current view
 */
- (NSArray *)siblingsView;

/**
 *  find the view upper current view
 *
 *  @return view upper current view
 */
- (UIView *)upperView;

/**
 *  find the view beblow current view
 *
 *  @return view below current view
 */
- (UIView *)belowView;

/**
 *  find the top sub view
 *
 *  @return top sub view
 */
- (UIView *)topSubView;

@end

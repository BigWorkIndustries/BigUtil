//
//  UIView+BIGHelpers.h
//  Pods
//
//  Created by Vincil Bishop on 2/9/16.
//
//

#import <UIKit/UIKit.h>

@interface UIView (BIGHelpers)

/**
 *  Removes all sub views of a the view.
 */
- (void) BIG_removeAllSubviews;


/**
 *  Recursively checks the next responder to see if it's a UIViewController.
 *
 *  @return The next UIViewController in the responder chain, or nil if it's not a UIViewController.
 */
- (UIViewController *) BIG_parentViewController;

@end

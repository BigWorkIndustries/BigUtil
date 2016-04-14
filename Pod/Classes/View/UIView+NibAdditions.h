//
//  UIView+NibAdditions.h
//  Pods
//
//  Created by Vincil Bishop on 10/16/15.
//
//

#import <UIKit/UIKit.h>

@interface UIView (NibAdditions)

+ (instancetype) BIG_viewWithNibNamed:(NSString*)nibName bundle:(NSBundle*)bundle;
+ (instancetype) BIG_viewWithNib;

@end

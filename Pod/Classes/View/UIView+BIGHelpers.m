//
//  UIView+BIGHelpers.m
//  Pods
//
//  Created by Vincil Bishop on 2/9/16.
//
//

#import "UIView+BIGHelpers.h"

@implementation UIView (BIGHelpers)

- (void) BIG_removeAllSubviews
{
    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj removeFromSuperview];
    }];
}

@end

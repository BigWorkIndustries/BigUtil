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

- (UIViewController *) BIG_parentViewController {
    
    UIResponder *responder = self;
    while ([responder isKindOfClass:[UIView class]]) {
        responder = [responder nextResponder];
    }
    
    if ([responder isKindOfClass:[UIViewController class]]) {
        return (UIViewController *)responder;
    } else {
        return nil;
    }
}

@end

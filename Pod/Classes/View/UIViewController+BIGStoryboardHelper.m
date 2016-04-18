//
//  UIViewController+StoryboardHelper.m
//  CarStory-Consumer
//
//  Created by Vincil Bishop on 7/29/15.
//
//

#import "UIViewController+BIGStoryboardHelper.h"


@implementation UIViewController (StoryboardHelper)

+ (instancetype) CU_instantiateFromMainStoryboard
{
    return [[UIStoryboard mainStoryboard] instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
}


+ (instancetype) CU_instantiateFromStoryboardNamed:(NSString*)storyboardName
{
    return [[UIStoryboard storyboardWithName:storyboardName bundle:nil] instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
}


+ (instancetype) CU_instantiateFromStoryboard:(UIStoryboard*)storyboard
{
    return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
}


@end

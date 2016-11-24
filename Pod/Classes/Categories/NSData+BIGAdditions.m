//
//  NSData+BIGAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 11/24/16.
//
//

#import "NSData+BIGAdditions.h"
#import "BigCategories.h"

@implementation NSData (BIGAdditions)

- (UIImage*) BIG_toImage
{
    UIImage *image = [UIImage imageWithData:self];
    return image;
}

- (NSString*) BIG_ToUTF8String
{
    return [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}

- (NSString*) BIG_ToBase64String
{
    return [self base64EncodedDataWithOptions:0];
}

@end

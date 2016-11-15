//
//  NSString+BIGDataHelpers.m
//  Pods
//
//  Created by Vincil Bishop on 5/5/16.
//
//

#import "NSString+BIGDataHelpers.h"

@implementation NSString (BIGDataHelpers)

- (NSData*) BIG_UTF8Data
{
    NSData* data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return data;
}

@end

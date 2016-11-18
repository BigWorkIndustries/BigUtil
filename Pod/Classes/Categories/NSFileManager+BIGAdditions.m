//
//  NSFileManager+BIGAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 11/17/16.
//
//

#import "NSFileManager+BIGAdditions.h"

@implementation NSFileManager (BIGAdditions)

- (NSURL*) BIG_documentsDirectory
{
    return [[self URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSURL*) BIG_cachesDirectory
{
    return [[self URLsForDirectory:NSCachesDirectory inDomains:NSUserDomainMask] lastObject];
}


@end

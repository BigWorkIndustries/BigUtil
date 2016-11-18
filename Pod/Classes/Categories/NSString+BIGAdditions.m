//
//  NSString+BIGAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 11/17/16.
//
//

#import "NSString+BIGAdditions.h"
#import "BigCategories.h"

@implementation NSString (BIGAdditions)

- (void) BIG_writeToFile:(NSString*)filename
{
    NSString *path = [[[[NSFileManager defaultManager] BIG_documentsDirectory] absoluteString] stringByAppendingString:filename];
    
    [self writeToURL:[NSURL URLWithString:path] atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

@end

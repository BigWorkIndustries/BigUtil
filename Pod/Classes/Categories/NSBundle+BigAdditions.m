//
//  NSBundle+BigAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 11/17/16.
//
//

#import "NSBundle+BigAdditions.h"

@implementation NSBundle (BigAdditions)

- (NSString*) BIG_stringWithContentsOfFile:(NSString*)filename
{
    NSString *path = [self pathForResource:filename ofType:nil];
    
    NSString *contents = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    return contents;
}

- (NSData*) BIG_dataWithContentsOfFile:(NSString*)filename
{
    NSString *path = [self pathForResource:filename ofType:nil];
    
    NSData *data = [NSData dataWithContentsOfURL:path];
    
    return data;
}

@end

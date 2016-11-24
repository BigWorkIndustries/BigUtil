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

+ (NSString*) BIG_stringWithContentsOfFile:(NSString*)filename bundle:(NSBundle*)bundle
{
    return [bundle BIG_stringWithContentsOfFile:filename];
}

+ (NSString*) BIG_stringWithContentsOfFile:(NSString*)filename
{
    return [[NSBundle mainBundle] BIG_stringWithContentsOfFile:filename];
}

- (void) BIG_writeToFile:(NSString*)filename
{
    NSString *path = [[[[NSFileManager defaultManager] BIG_documentsDirectory] absoluteString] stringByAppendingString:filename];
    
    [self writeToURL:[NSURL URLWithString:path] atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

- (NSData*) BIG_toBase64Data
{
    NSData *data = [[NSData alloc] initWithBase64EncodedString:self options:NSDataBase64DecodingIgnoreUnknownCharacters];
    
    return data;
}

- (NSData*) BIG_toUTF8Data
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    
    return data;
}

@end

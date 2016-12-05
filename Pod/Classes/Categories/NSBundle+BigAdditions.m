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
    
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    return data;
}
    
- (NSString*) BIG_appName
{
    return [self objectForInfoDictionaryKey:(NSString*)kCFBundleNameKey];
}
    
- (NSString*) BIG_version
{
    return [self objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}
    
- (NSString*) BIG_build
{
    return [self objectForInfoDictionaryKey:(NSString*)kCFBundleVersionKey];
}
    
- (NSString*) BIG_prettyBuildVersion
{
    return [NSString stringWithFormat:@"v%@.%@",self.BIG_version,self.BIG_build];
}

    
    

@end

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

- (UIImage*) BIG_toPNGImage
{
    UIImage *image = [UIImage imageWithData:self];
    NSData *data = UIImagePNGRepresentation(image);
    return data;
}


- (UIImage*) BIG_toJPGImage
{
    UIImage *image = [UIImage imageWithData:self];
    NSData *data = UIImageJPEGRepresentation(image,1);
    return data;
}

- (NSString*) BIG_ToUTF8String
{
    return [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}

- (NSString*) BIG_ToBase64String
{
    return [self base64EncodedStringWithOptions:0];
}

- (void) BIG_writeToFile:(NSString*)filename
{
    NSURL *url = [[[NSFileManager defaultManager] BIG_documentsDirectory] URLByAppendingPathComponent:filename];
    [self writeToURL:url atomically:YES];
}

@end

//
//  NSString+BIGAdditions.h
//  Pods
//
//  Created by Vincil Bishop on 11/17/16.
//
//

#import <Foundation/Foundation.h>

@interface NSString (BIGAdditions)

+ (NSString*) BIG_stringWithContentsOfFile:(NSString*)filename bundle:(NSBundle*)bundle;
+ (NSString*) BIG_stringWithContentsOfFile:(NSString*)filename;
- (void) BIG_writeToFile:(NSString*)filename;
- (NSData*) BIG_toBase64Data;
- (NSData*) BIG_toUTF8Data;

@end

//
//  NSBundle+BigAdditions.h
//  Pods
//
//  Created by Vincil Bishop on 11/17/16.
//
//

#import <Foundation/Foundation.h>

@interface NSBundle (BigAdditions)

- (NSString*) BIG_stringWithContentsOfFile:(NSString*)filename;
- (NSData*) BIG_dataWithContentsOfFile:(NSString*)filename;

@end

//
//  NSData+BIGAdditions.h
//  Pods
//
//  Created by Vincil Bishop on 11/24/16.
//
//

#import <Foundation/Foundation.h>

@interface NSData (BIGAdditions)

- (UIImage*) BIG_toImage;
- (UIImage*) BIG_toPNGImage;
- (UIImage*) BIG_toJPGImage;
- (NSString*) BIG_ToUTF8String;
- (NSString*) BIG_ToBase64String;
- (void) BIG_writeToFile:(NSString*)filename;

@end

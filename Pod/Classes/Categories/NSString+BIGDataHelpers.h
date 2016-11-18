//
//  NSString+BIGDataHelpers.h
//  Pods
//
//  Created by Vincil Bishop on 5/5/16.
//
//

#import <Foundation/Foundation.h>

@interface NSString (BIGDataHelpers)

- (NSData*) BIG_UTF8Data;

- (NSData*) BIG_Base64Data;

@end

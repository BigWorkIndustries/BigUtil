//
//  NSFileManager+BIGAdditions.h
//  Pods
//
//  Created by Vincil Bishop on 11/17/16.
//
//

#import <Foundation/Foundation.h>

@interface NSFileManager (BIGAdditions)

- (NSURL*) BIG_documentsDirectory;
- (NSURL*) BIG_cachesDirectory;

@end

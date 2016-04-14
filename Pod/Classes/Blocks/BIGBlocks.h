//
//  BIGBlocks.h
//  Pods
//
//  Created by Vincil Bishop on 7/21/15.
//
//

#ifndef Pods_BIGBlocks_h
#define Pods_BIGBlocks_h


#endif

typedef void (^BIGBlock)(id sender, id result);

typedef void (^BIGCompletionBlock)(id sender, BOOL success, NSError *error, id result);

typedef void (^BIGStateChangeBlock)(id sender, id oldState, id newState);
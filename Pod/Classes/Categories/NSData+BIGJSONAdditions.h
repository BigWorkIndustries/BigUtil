//
//  NSData+BIGJSONAdditions.h
//  Pods
//
//  Created by Vincil Bishop on 12/19/16.
//
//

#import <Foundation/Foundation.h>

@interface NSData (BIGJSONAdditions)

- (id) BIG_JSONObject;

- (NSDictionary*) BIG_JSONDictionary;

- (NSArray*) BIG_JSONArray;

@end

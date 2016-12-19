//
//  NSData+BIGJSONAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 12/19/16.
//
//

#import "NSData+BIGJSONAdditions.h"

@implementation NSData (BIGJSONAdditions)

- (id) BIG_JSONObject
{
    id json = [NSJSONSerialization JSONObjectWithData:self
                                              options:NSJSONReadingMutableContainers
                                                error:nil];
    
    return json;
}


- (NSDictionary*) BIG_JSONDictionary
{
    return (NSDictionary*)[self BIG_JSONObject];
}


- (NSArray*) BIG_JSONArray
{
    return (NSArray*)[self BIG_JSONObject];
}

@end

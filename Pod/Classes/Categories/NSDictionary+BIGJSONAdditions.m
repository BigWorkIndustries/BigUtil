//
//  NSDictionary+BIGJSONAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 11/15/16.
//
//

#import "NSDictionary+BIGJSONAdditions.h"

@implementation NSDictionary (BIGJSONAdditions)

-(NSData*) BIG_toJSONData
{
  
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:0
                                                         error:nil];
    return jsonData;
    
}

@end

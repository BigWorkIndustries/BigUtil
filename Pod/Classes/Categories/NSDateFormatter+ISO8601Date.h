//
//  NSDateFormatter+ISO8601Date
//
//  Created by Vincil Bishop on 11/7/16.
//

#import <Foundation/Foundation.h>

@interface NSDateFormatter (ISO8601Date)

+ (NSDateFormatter*) BIG_ISO8601JSONDateFormatter;
+ (NSDateFormatter*) BIG_fileFriendlyDateFormatter;

@end

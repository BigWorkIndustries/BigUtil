//
//  NSDateFormatter+ISO8601Date.m
//
//  Created by Vincil Bishop on 11/7/16.
//

#import "NSDateFormatter+ISO8601Date.h"

static NSDateFormatter *_JSONDateFormatter;

@implementation NSDateFormatter (ISO8601Date)

+ (NSDateFormatter*) BIG_ISO8601JSONDateFormatter
{
	if (!_JSONDateFormatter) {
		_JSONDateFormatter = [NSDateFormatter new];
		[_JSONDateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"];
	}
	
	return _JSONDateFormatter;
}

@end

//
//  UIImage+BIGAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 12/5/16.
//
//

#import "UIImage+BIGAdditions.h"

@implementation UIImage (BIGAdditions)

- (NSData*) BIG_toJPGData
{
    NSData *data = UIImageJPEGRepresentation(self, 1);
    return data;
}

- (NSData*) BIG_toPNGData
{
    NSData *data = UIImageJPEGRepresentation(self, 1);
    return data;
}

- (UIImage*) BIG_rotate:(UIImageOrientation)orientation
{
    return [[UIImage alloc] initWithCGImage:self.CGImage scale:1.0f orientation:orientation];
}

@end

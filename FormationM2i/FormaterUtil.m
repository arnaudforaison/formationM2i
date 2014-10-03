//
//  FormatterUtil.m
//  FormationM2i
//
//  Created by admin on 03/10/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "FormaterUtil.h"

@implementation FormaterUtil

+ (NSDate*) formatDateWithString: (NSString*) dateString {
    NSDateFormatter* dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    return [dateFormatter dateFromString:dateString];
}

@end

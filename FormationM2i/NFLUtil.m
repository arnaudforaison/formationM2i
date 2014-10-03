//
//  NFLUtil.m
//  FormationM2i
//
//  Created by admin on 03/10/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "NFLUtil.h"

@implementation NFLUtil

+ (NSString*) positionWithEnum:(enum positionEnum) position {
    NSString* result = nil;
    
    switch (position) {
        case DL:
            result = @"Defensive Lineman";
            break;
        case LB:
            result = @"Linebacker";
            break;
        case CB:
            result = @"Cornerback";
            break;
        case SS:
            result = @"Safety";
            break;
        case OL:
            result = @"Offensive Lineman";
            break;
        case TE:
            result = @"Tight End";
            break;
        case RB:
            result = @"Running Back";
            break;
        case WR:
            result = @"Wide Receiver";
            break;
        case QB:
            result = @"Quaterback";
            break;
        case K:
            result = @"Kicker";
            break;
        case ALL:
            result = @"All";
            break;
            
        default:
            break;
    }
    
    return result;
}

@end

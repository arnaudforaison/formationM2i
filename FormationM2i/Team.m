//
//  Team.m
//  FormationM2i
//
//  Created by admin on 30/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "Team.h"

@implementation Team
@synthesize name,city,players,coachs;

-(Team*)initWithName: (NSString*) nom AndCity: (NSString*) ville{
    if (self = [super init]) {
        players = [NSMutableArray new];
        coachs = [NSMutableArray new];
        name = nom;
        city = ville;
    }
    return self;
}

- (void) addPlayer: (Player*) player{
    [players addObject:player];
}

- (void) addCoach: (Coach*) coach {
    [coachs addObject:coach];
}

@end

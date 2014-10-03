//
//  TeamService.m
//  FormationM2i
//
//  Created by admin on 03/10/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "TeamService.h"

@interface TeamService()

@property(nonatomic,strong) NSMutableArray* teamsNFL;

@end

@implementation TeamService
@synthesize teamsNFL;

- (id)init {
    if(self = [super init]){
        teamsNFL = [NSMutableArray new];
    }
    return self;
}

- (NSMutableArray*) loadTeams {
    if ([teamsNFL count] == 0) {
        NSFetchRequest* request = [NSFetchRequest fetchRequestWithEntityName:@"Team"];
        NSError* error = nil;
        NSArray* results = [super.context executeFetchRequest:request error:&error];
        if ([results count] == 0) {
            [self initNFL];
        }
    }
    
    return teamsNFL;
}

- (void) initNFL {
    
    Team* team = [Team alloc];
    team.name = @"49ers";
    team.city = @"San Francisco";
    [teamsNFL addObject: team];
    
    team.name = @"Seahawk";
    team.city = @"Seattle";
    [teamsNFL addObject: team];
    
    
    team.name = @"Broncos";
    team.city = @"Denver";
    [teamsNFL addObject: team];
    
    team.name = @"Panthers";
    team.city = @"Carolina";
    [teamsNFL addObject: team];
    
    team.name = @"Ravens";
    team.city = @"Baltimore";
    [teamsNFL addObject: team];
    
    team.name = @"Jaguars";
    team.city = @"Jacksonville";
    [teamsNFL addObject: team];
    
    team.name = @"Saints";
    team.city = @"New Orleans";
    [teamsNFL addObject: team];
    
    team.name = @"Rams";
    team.city = @"Saint Louis";
    [teamsNFL addObject: team];
    
    team.name = @"Bears";
    team.city = @"Chicago";
    [teamsNFL addObject: team];
    
    team.name = @"Patriots";
    team.city = @"New England";
    [teamsNFL addObject: team];
    
    team.name = @"Redskins";
    team.city = @"Washington";
    [teamsNFL addObject: team];
    
    team.name = @"Vikings";
    team.city = @"Minnesota";
    [teamsNFL addObject: team];
    
    team.name = @"Colts";
    team.city = @"Indianapolis";
    [teamsNFL addObject: team];
    
    team.name = @"Cardinals";
    team.city = @"Arizona";
    [teamsNFL addObject: team];
    
    team.name = @"Falcons";
    team.city = @"Atlanta";
    [teamsNFL addObject: team];
    
    team.name = @"Bills";
    team.city = @"Buffalo";
    [teamsNFL addObject: team];
    
    team.name = @"Bengals";
    team.city = @"Cincinnati";
    [teamsNFL addObject: team];
    
    team.name = @"Browns";
    team.city = @"Cleveland";
    [teamsNFL addObject: team];
    
    team.name = @"Lions";
    team.city = @"Detroit";
    [teamsNFL addObject: team];
    
    team.name = @"Packers";
    team.city = @"Green Bay";
    [teamsNFL addObject: team];

    team.name = @"Texans";
    team.city = @"Houston";
    [teamsNFL addObject: team];
    
    team.name = @"Chiefs";
    team.city = @"Kansas City";
    [teamsNFL addObject: team];
    
    team.name = @"Giants";
    team.city = @"New York";
    [teamsNFL addObject: team];
    
    team.name = @"Jets";
    team.city = @"New York";
    [teamsNFL addObject: team];
    
    team.name = @"Raiders";
    team.city = @"Oakland";
    [teamsNFL addObject: team];
    
    team.name = @"Eagles";
    team.city = @"Philadelphia";
    [teamsNFL addObject: team];
    
    team.name = @"Steelers";
    team.city = @"Pittsburg";
    [teamsNFL addObject: team];
    
    team.name = @"Chargers";
    team.city = @"San Diego";
    [teamsNFL addObject: team];
    
    team.name = @"Buccaneers";
    team.city = @"Tempa Bay";
    [teamsNFL addObject: team];
    
    team.name = @"Titans";
    team.city = @"Tennessee";
    [teamsNFL addObject: team];
    
    team.name = @"Cowboys";
    team.city = @"Dallas";
    [teamsNFL addObject: team];
    
    team.name = @"Dolphins";
    team.city = @"Miami";
    [teamsNFL addObject: team];
}


@end

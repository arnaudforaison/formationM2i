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

- (void) addTeamWithName:(NSString*) name AndCity:(NSString*) city {
    Team* team = [NSEntityDescription insertNewObjectForEntityForName:@"Team" inManagedObjectContext:super.context];
    team.name = name;
    team.city = city;
    [teamsNFL addObject: team];
}

- (void) initNFL {
    
    [self addTeamWithName:@"49ers" AndCity:@"San Francisco"];
    [self addTeamWithName:@"Seahawk" AndCity:@"Seattle"];
    [self addTeamWithName:@"Broncos" AndCity:@"Denver"];
    [self addTeamWithName:@"Panthers" AndCity:@"Carolina"];
    [self addTeamWithName:@"Ravens" AndCity:@"Baltimore"];
    [self addTeamWithName:@"Jaguars" AndCity:@"Jacksonville"];
    [self addTeamWithName:@"Saints" AndCity:@"New Orleans"];
    [self addTeamWithName:@"Rams" AndCity:@"Saint Louis"];
    [self addTeamWithName:@"Bears" AndCity:@"Chicago"];
    [self addTeamWithName:@"Patriots" AndCity:@"New England"];
    [self addTeamWithName:@"Redskins" AndCity:@"Washington"];
    [self addTeamWithName:@"Vikings" AndCity:@"Minnesota"];
    [self addTeamWithName:@"Colts" AndCity:@"Indianapolis"];
    [self addTeamWithName:@"Cardinals" AndCity:@"Arizona"];
    [self addTeamWithName:@"Falcons" AndCity:@"Atlanta"];
    [self addTeamWithName:@"Bills" AndCity:@"Buffalo"];
    [self addTeamWithName:@"Bengals" AndCity:@"Cincinnati"];
    [self addTeamWithName:@"Browns" AndCity:@"Cleveland"];
    [self addTeamWithName:@"Lions" AndCity:@"Detroit"];
    [self addTeamWithName:@"Packers" AndCity:@"Green Bay"];
    [self addTeamWithName:@"Texans" AndCity:@"Houston"];
    [self addTeamWithName:@"Chiefs" AndCity:@"Kansas City"];
    [self addTeamWithName:@"Giants" AndCity:@"New York"];
    [self addTeamWithName:@"Jets" AndCity:@"New York"];
    [self addTeamWithName:@"Raiders" AndCity:@"Oakland"];
    [self addTeamWithName:@"Steelers" AndCity:@"Pittsburg"];
    [self addTeamWithName:@"Chargers" AndCity:@"San Diego"];
    [self addTeamWithName:@"Buccaneers" AndCity:@"Tempa Bay"];
    [self addTeamWithName:@"Titans" AndCity:@"Tennessee"];
    [self addTeamWithName:@"Cowboys" AndCity:@"Dallas"];
    [self addTeamWithName:@"Dolphins" AndCity:@"Miami"];
    
    NSError* error = nil;
    [super.context save:&error];
}

@end

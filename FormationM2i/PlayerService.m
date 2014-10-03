//
//  PlayerService.m
//  FormationM2i
//
//  Created by admin on 03/10/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "PlayerService.h"

@implementation PlayerService

- (NSMutableArray*) getPlayersFromTeamId:(int) teamId {
    return [self listPlayersNFL];
}

- (NSMutableArray*) listPlayersNFL {
    NSMutableArray* players = [NSMutableArray new];
    
    Player* boldin = [Player new];
    boldin.weight = [NSNumber numberWithInt:98];
    boldin.size = [NSNumber numberWithInt:185];
    boldin.university = @"Seminoles Florida State";
    boldin.lastName = @"Boldin" ;
    boldin.firstName = @"Anquan";
    boldin.birthday = [FormaterUtil formatDateWithString:@"03-10-1980"];
    boldin.city = @"Pahokee";
    boldin.state = @"Floride";
    boldin.country = @"USA";
    boldin.squad = [NSNumber numberWithInt:Offense];
    boldin.pictureProfile = @"http://static.nfl.com/static/content/public/static/img/fantasy/transparent/200x200/BOL283010.png";
    boldin.position = [NSNumber numberWithInt:WR];
    
    Player* kaepernick = [Player new];
    kaepernick.weight = [NSNumber numberWithInt:104];
    kaepernick.size = [NSNumber numberWithInt:194];
    kaepernick.university = @"Wolf Pack Nevada";
    kaepernick.lastName = @"Kaepernick" ;
    kaepernick.firstName = @"Colin";
    kaepernick.birthday = [FormaterUtil formatDateWithString:@"03-11-1987"];
    kaepernick.city = @"Milwaukee";
    kaepernick.state = @"Wisconsin";
    kaepernick.country = @"USA";
    kaepernick.squad = [NSNumber numberWithInt:Offense ];
    kaepernick.pictureProfile = @"http://static.nfl.com/static/content/public/static/img/fantasy/transparent/200x200/KAE371576.png";
    kaepernick.position = [NSNumber numberWithInt:QB];
    
    Player* smith = [Player new];
    smith.weight = [NSNumber numberWithInt:129];
    smith.size = [NSNumber numberWithInt:193];
    smith.university = @"Tigers Missouri";
    smith.lastName = @"Smith" ;
    smith.firstName = @"Justin";
    smith.birthday = [FormaterUtil formatDateWithString:@"30-09-1979"];
    smith.city = @"Jefferson City";
    smith.state = @"Missouri";
    smith.country = @"USA";
    smith.squad = [NSNumber numberWithInt:Defense ];
    smith.pictureProfile = nil;
    smith.position = [NSNumber numberWithInt:DL];
    
    
    
    [players addObject:kaepernick];
    [players addObject:boldin];
    [players addObject:smith];
    
    return players;
}

@end

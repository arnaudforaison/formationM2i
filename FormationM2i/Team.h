//
//  Team.h
//  FormationM2i
//
//  Created by admin on 30/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Coach.h"

@interface Team : NSObject

@property (nonatomic,strong,readonly) NSString* name;
@property (nonatomic,strong) NSString* city;
@property (nonatomic,strong) NSMutableArray* players;
@property (nonatomic,strong) NSMutableArray* coachs;

-(Team*)initWithName: (NSString*) nom AndCity: (NSString*) ville;
- (void) addPlayer: (Player*) player;
- (void) addCoach: (Coach*) coach;

@end

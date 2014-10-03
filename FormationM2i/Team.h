//
//  Team.h
//  FormationM2i
//
//  Created by admin on 03/10/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Coach, Player;

@interface Team : NSManagedObject

@property (nonatomic, retain) NSString * city;
@property (nonatomic, retain) NSDate * creationDate;
@property (nonatomic, retain) NSString * logoUrl;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * primaryColorCode;
@property (nonatomic, retain) NSString * secondaryColorCode;
@property (nonatomic, retain) NSString * stadiumName;
@property (nonatomic, retain) NSString * yearLastSuperBowl;
@property (nonatomic, retain) NSNumber * idTeam;
@property (nonatomic, retain) NSSet *coaches;
@property (nonatomic, retain) NSSet *players;
@end

@interface Team (CoreDataGeneratedAccessors)

- (void)addCoachesObject:(Coach *)value;
- (void)removeCoachesObject:(Coach *)value;
- (void)addCoaches:(NSSet *)values;
- (void)removeCoaches:(NSSet *)values;

- (void)addPlayersObject:(Player *)value;
- (void)removePlayersObject:(Player *)value;
- (void)addPlayers:(NSSet *)values;
- (void)removePlayers:(NSSet *)values;

@end

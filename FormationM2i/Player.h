//
//  Player.h
//  FormationM2i
//
//  Created by admin on 03/10/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "People.h"

@class Team;

@interface Player : People

@property (nonatomic, retain) NSNumber * position;
@property (nonatomic, retain) NSNumber * size;
@property (nonatomic, retain) NSString * university;
@property (nonatomic, retain) NSNumber * weight;
@property (nonatomic, retain) Team *team;

@end

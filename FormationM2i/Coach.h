//
//  Coach.h
//  FormationM2i
//
//  Created by admin on 03/10/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "People.h"

@class Team;

@interface Coach : People

@property (nonatomic, retain) NSDate * dateBegin;
@property (nonatomic, retain) Team *team;

@end

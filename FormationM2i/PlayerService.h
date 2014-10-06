//
//  PlayerService.h
//  FormationM2i
//
//  Created by admin on 03/10/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "CommonService.h"

@interface PlayerService : CommonService

- (NSMutableArray*) playersFromTeamId:(NSNumber*) teamId;

@end

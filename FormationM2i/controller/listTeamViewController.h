//
//  listTeamViewController.h
//  FormationM2i
//
//  Created by admin on 30/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Team.h"
#import "ListPlayerViewController.h"
#import "TeamService.h"

@interface ListTeamViewController : UIViewController {
    NSMutableArray* filteredTeams;
    Team *teamSelected;
}

@end

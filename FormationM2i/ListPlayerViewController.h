//
//  listPlayerViewController.h
//  FormationM2i
//
//  Created by admin on 30/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
#import "DetailPlayerViewController.h"
#import "FilterPlayerViewController.h"

@interface ListPlayerViewController : UIViewController {
    NSMutableArray* playersFiltered;
    enum positionEnum positionFiltered;
    Player* playerSelected;
}

@property (strong, nonatomic) NSMutableArray* playersTeam;

- (void) initListPlayers;

@end

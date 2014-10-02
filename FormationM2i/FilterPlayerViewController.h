//
//  FilterPlayerViewController.h
//  FormationM2i
//
//  Created by admin on 01/10/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"

@protocol FilterPlayerDelegate <NSObject>

- (void) validateFilter:(enum positionEnum) position;

@end

@interface FilterPlayerViewController : UIViewController

@property (assign) id <FilterPlayerDelegate> delegate;
@property (nonatomic) enum positionEnum position;

@end

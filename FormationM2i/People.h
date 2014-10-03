//
//  People.h
//  FormationM2i
//
//  Created by admin on 03/10/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface People : NSManagedObject

@property (nonatomic, retain) NSDate * birthday;
@property (nonatomic, retain) NSString * city;
@property (nonatomic, retain) NSString * country;
@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSNumber * idPeople;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSString * pictureProfile;
@property (nonatomic, retain) NSNumber * squad;
@property (nonatomic, retain) NSString * state;

@end

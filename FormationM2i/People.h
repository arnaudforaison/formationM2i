//
//  Personne.h
//  FormationM2i
//
//  Created by admin on 30/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Place.h"

@interface People : NSObject

enum squadEnum {Offense,Defense,SpecialTeam};

@property (nonatomic,strong) NSString* lastName;
@property (nonatomic,strong) NSString* name;
@property (nonatomic,strong) NSDate* birthday;
@property (nonatomic,strong) Place* place;
@property (nonatomic) enum squadEnum squad;
@property (nonatomic,strong) NSString* urlProfilePic;

- (People*) initWithLastName: (NSString*) nom AndName: (NSString*) prenom AndBirthday: (NSString*) dateNaissance AndSquad: (enum squadEnum) equipe AndPicProfile:(NSString*) urlImage;
- (People*) initWithLastName: (NSString*) nom AndName: (NSString*) prenom AndBirthday: (NSString*) dateNaissance AndSquad: (enum squadEnum) equipe AndPicProfile:(NSString*) urlImage AndBirthCity: (NSString*) ville AndBirthState: (NSString*) etat AndBirthCountry: (NSString*) pays;

@end
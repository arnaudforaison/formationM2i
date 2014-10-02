//
//  Coach.h
//  FormationM2i
//
//  Created by admin on 30/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "People.h"

@interface Coach : People

enum gameEnum {Rush,Pass,Press};

@property (nonatomic,strong,readonly) NSDate* dateStart;
@property (nonatomic) enum gameEnum mostPlayedGame;

- (Coach*) initWithdateStart: (NSString*) dateDebut AndLastName: (NSString*) nom AndName: (NSString*) prenom AndBirthday: (NSString*) dateNaissance AndBirthCity: (NSString*) ville AndBirthState: (NSString*) etat AndBirthCountry: (NSString*) pays AndSquad: (enum squadEnum) equipe AndPicProfile:(NSString*) urlImage;

@end

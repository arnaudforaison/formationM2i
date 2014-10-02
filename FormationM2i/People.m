//
//  Personne.m
//  FormationM2i
//
//  Created by admin on 30/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "People.h"

@implementation People

@synthesize lastName,name,birthday,place,squad,urlProfilePic;

- (People*) initWithLastName: (NSString*) nom AndName: (NSString*) prenom AndBirthday: (NSString*) dateNaissance AndSquad: (enum squadEnum) equipe AndPicProfile:(NSString*) urlImage{
    if(self = [super init]){
        lastName = nom;
        name = prenom;
        NSDateFormatter *dateFormatter = [NSDateFormatter new];
        [dateFormatter setDateFormat:@"dd-MM-yyyy"];
        birthday = [dateFormatter dateFromString:dateNaissance];
        squad = equipe;
        urlProfilePic = urlImage;        
    }
    return self;
}

- (People*) initWithLastName: (NSString*) nom AndName: (NSString*) prenom AndBirthday: (NSString*) dateNaissance AndSquad: (enum squadEnum) equipe AndPicProfile:(NSString*) urlImage AndBirthCity: (NSString*) ville AndBirthState: (NSString*) etat AndBirthCountry: (NSString*) pays{
    
    if(self = [self initWithLastName:nom AndName:prenom AndBirthday:dateNaissance AndSquad:equipe AndPicProfile: urlImage]){
        place = [Place new];
        place.city = ville;
        place.state = etat;
        place.country = pays;
    }
    return self;
}
@end

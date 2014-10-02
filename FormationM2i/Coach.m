//
//  Coach.m
//  FormationM2i
//
//  Created by admin on 30/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "Coach.h"

@implementation Coach

@synthesize dateStart;

- (Coach*) initWithdateStart: (NSString*) dateDebut AndLastName: (NSString*) nom AndName: (NSString*) prenom AndBirthday: (NSString*) dateNaissance AndBirthCity: (NSString*) ville AndBirthState: (NSString*) etat AndBirthCountry: (NSString*) pays AndSquad: (enum squadEnum) equipe AndPicProfile:(NSString*) urlImage{
    
    if(self = [super initWithLastName:nom AndName:prenom AndBirthday:dateNaissance AndSquad:equipe AndPicProfile:urlImage AndBirthCity:ville AndBirthState:etat AndBirthCountry:pays]){
        NSDateFormatter *dateFormatter = [NSDateFormatter new];
        [dateFormatter setDateFormat:@"dd-MM-yyyy"];
        dateStart = [dateFormatter dateFromString:dateDebut];
    }
    
    return self;
}

@end

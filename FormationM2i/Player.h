//
//  Player.h
//  FormationM2i
//
//  Created by admin on 30/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "People.h"

@interface Player : People

enum positionEnum {DL,LB,CB,SS,OL,TE,RB,WR,QB,K,ALL};

// Weight in kg
@property (nonatomic) int weight;

// Size in cm
@property (nonatomic) int size;

@property (nonatomic) enum positionEnum position;

@property (nonatomic,strong,readonly) NSString* university;

- (Player*) initWithWeight: (int) poids AndSize: (int) taille AndUniversity: (NSString*) universite AndLastName: (NSString*) nom AndName: (NSString*) prenom AndBirthday: (NSString*) dateNaissance AndBirthCity: (NSString*) ville AndBirthState: (NSString*) etat AndBirthCountry: (NSString*) pays AndSquad: (enum squadEnum) equipe AndPicProfile:(NSString*) urlImage AndPosition: (enum positionEnum) poste;

- (void) changeWeight: (int) poids AndSize: (int) taille;

+ (NSString*) getPostionWithPosition:(enum positionEnum) poste;

+ (NSString*) getPostionWithIndex:(int) index;

@end

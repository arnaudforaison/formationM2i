//
//  Player.m
//  FormationM2i
//
//  Created by admin on 30/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "Player.h"

@implementation Player
@synthesize weight,size,university,position;


- (Player*) initWithWeight: (int) poids AndSize: (int) taille AndUniversity: (NSString*) universite AndLastName: (NSString*) nom AndName: (NSString*) prenom AndBirthday: (NSString*) dateNaissance AndBirthCity: (NSString*) ville AndBirthState: (NSString*) etat AndBirthCountry: (NSString*) pays AndSquad: (enum squadEnum) equipe AndPicProfile:(NSString*) urlImage AndPosition: (enum positionEnum) poste{
    if(self = [super initWithLastName:nom AndName:prenom AndBirthday:dateNaissance AndSquad:equipe AndPicProfile:urlImage AndBirthCity:ville AndBirthState:etat AndBirthCountry:pays]){
        weight = poids;
        size = taille;
        university = universite;
        position = poste;
    }
    return self;
}

- (void) changeWeight: (int) poids AndSize: (int) taille {
    weight = poids;
    size = taille;
}

+ (NSString*) getPostionWithPosition:(enum positionEnum) poste {
    NSString* result = nil;
    
    switch (poste) {
        case DL:
            result = @"Defensive Lineman";
            break;
        case LB:
            result = @"Linebacker";
            break;
        case CB:
            result = @"Cornerback";
            break;
        case SS:
            result = @"Safety";
            break;
        case OL:
            result = @"Offensive Lineman";
            break;
        case TE:
            result = @"Tight End";
            break;
        case RB:
            result = @"Running Back";
            break;
        case WR:
            result = @"Wide Receiver";
            break;
        case QB:
            result = @"Quaterback";
            break;
        case K:
            result = @"Kicker";
            break;
        case ALL:
            result = @"All";
            break;
            
        default:
            break;
    }
    
    return result;
}

+ (NSString*) getPostionWithIndex:(int) index {
    NSString* result = nil;
    
    switch (index) {
        case 0:
            result = [Player getPostionWithPosition:DL];
            break;
        case 1:
            result = [Player getPostionWithPosition:LB];
            break;
        case 2:
            result = [Player getPostionWithPosition:CB];
            break;
        case 3:
            result = [Player getPostionWithPosition:SS];
            break;
        case 4:
            result = [Player getPostionWithPosition:OL];
            break;
        case 5:
            result = [Player getPostionWithPosition:TE];
            break;
        case 6:
            result = [Player getPostionWithPosition:RB];
            break;
        case 7:
            result = [Player getPostionWithPosition:WR];
            break;
        case 8:
            result = [Player getPostionWithPosition:QB];
            break;
        case 9:
            result = [Player getPostionWithPosition:K];
            break;
        case 10:
            result = [Player getPostionWithPosition:ALL];
            break;
            
        default:
            break;
    }
    
    return result;
}


@end

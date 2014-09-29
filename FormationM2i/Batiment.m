//
//  MaPremiereClasse.m
//  FormationM2i
//
//  Created by admin on 29/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "Batiment.h"
#import "Adresse.h"

@interface Batiment()
    @property(nonatomic,strong) Adresse* adresse;
@end

@implementation Batiment
@synthesize adresse;

- (Batiment*) initWithNom: (NSString*) name AndNombreMur: (int) nombreMur {
    if(self = [super init]){
        nom = name;
        nbMur = nombreMur;
        adresse = [[Adresse alloc] init];
    }
    return self;
}

- (void) changeAdresseWithNumero:(int) numero etRue:(NSString*) rue etCodePostal:(int) cp etVille:(NSString*) ville {
    NSLog(@"ChangerAdresse - Debut");
    adresse.numero = numero;
    adresse.rue = rue;
    adresse.codePostal = cp;
    adresse.ville = ville;
    NSLog(@"L'adresse du batiment a été changé");
}

- (void) definirNombreDeMur: (int) nombreMur {
    nbMur = nombreMur;
    NSLog(@"Le nouveau nombre de mur du batiment est de %d",nombreMur);
}

- (NSString*) afficherDetails {
    NSString* details = [[NSString alloc] initWithFormat:@"%@ (%d murs):\n %d %@ %d %@",nom,nbMur,adresse.numero,adresse.rue,adresse.codePostal,adresse.ville];
    return details;
}

@end

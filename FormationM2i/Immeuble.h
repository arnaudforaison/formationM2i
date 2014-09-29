//
//  Immeuble.h
//  FormationM2i
//
//  Created by admin on 29/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "Batiment.h"

@interface Immeuble : Batiment

@property (nonatomic) int nbEtage;

- (Immeuble*) initWithNom: (NSString*) name AndNbEtage: (int)nbEtage AndAdresseWithNumero: (int) num AndRue: (NSString*) rue AndCodePostal: (int) cp AndVille: (NSString*) ville;

@end

//
//  Immeuble.m
//  FormationM2i
//
//  Created by admin on 29/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "Immeuble.h"

@implementation Immeuble
@synthesize nbEtage;

- (Immeuble*) initWithNom: (NSString*) name AndNbEtage: (int) nbEtage AndAdresseWithNumero: (int) num AndRue: (NSString*) rue AndCodePostal: (int) cp AndVille: (NSString*) ville{
    if(self = [super initWithNom:name AndNombreMur:4]){
        [super changeAdresseWithNumero:num etRue:rue etCodePostal:cp etVille:ville];
        self.nbEtage = nbEtage;
    }
    return self;
}

@end

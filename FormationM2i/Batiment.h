//
//  MaPremiereClasse.h
//  FormationM2i
//
//  Created by admin on 29/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Batiment : NSObject {
    NSString * nom;
    int nbMur;
    
}

- (void) changeAdresseWithNumero:(int) numero etRue:(NSString*) rue etCodePostal:(int) cp etVille:(NSString*) ville;
- (void) definirNombreDeMur: (int) nombreMur;
- (Batiment*) initWithNom: (NSString*) nom AndNombreMur: (int) nbMur;
- (NSString*) afficherDetails;

@end

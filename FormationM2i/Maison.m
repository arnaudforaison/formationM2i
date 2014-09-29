//
//  Maison.m
//  FormationM2i
//
//  Created by admin on 29/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "Maison.h"

@implementation Maison
@synthesize possedeJardin;

- (Maison*) initWithNom: (NSString*) name AndPossedeJardin: (BOOL)haveJardin AndAdresseWithNumero: (int) num AndRue: (NSString*) rue AndCodePostal: (int) cp AndVille: (NSString*) ville {
    if(self = [super initWithNom:name AndNombreMur:4]){
        [super changeAdresseWithNumero:num etRue:rue etCodePostal:cp etVille:ville];
        possedeJardin= haveJardin;
    }
    return self;
}

@end
